import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mood_track/src/core/constants/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/core/constants/border_radius.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

enum CalendarViewMode {
  compact, // Показывает месяцы вертикально
  expanded // Показывает сетку месяцев
}

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({Key? key}) : super(key: key);

  @override
  CustomCalendarState createState() => CustomCalendarState();
}

class CustomCalendarState extends State<CustomCalendar> {
  late DateTime _selectedDate;
  CalendarViewMode _viewMode = CalendarViewMode.compact;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  List<String> get _weekDays => ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];

  List<String> get _months => [
        'Январь',
        'Февраль',
        'Март',
        'Апрель',
        'Май',
        'Июнь',
        'Июль',
        'Август',
        'Сентябрь',
        'Октябрь',
        'Ноябрь',
        'Декабрь'
      ];

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final nunito = Theme.of(context).extension<Nunito>()!;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onDoubleTap: () => _onScaleUpdate(),
          child: Padding(
            padding: Spacing.all20,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        color: nunito.myColor.grey2,
                        size: 30,
                      ),
                    ),
                    Text(
                      l.toDay,
                      style:
                          nunito.s18W700.copyWith(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Expanded(
                  child: _viewMode == CalendarViewMode.compact
                      ? _buildCompactView(nunito)
                      : _buildExpandedView(nunito),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onChangeViewMode(CalendarViewMode viewMode) {
    setState(() => _viewMode = viewMode);
  }

  void _onScaleUpdate() {
    if ( _viewMode == CalendarViewMode.expanded) {
      _onChangeViewMode(CalendarViewMode.compact);
    } else if (_viewMode == CalendarViewMode.compact) {
      _onChangeViewMode(CalendarViewMode.expanded);
    }
  }

  Widget _buildCompactView(Nunito nunito) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 7,
          childAspectRatio: 1.5,
          children: _weekDays
              .map((day) => Center(
            child: Text(
              day,
              textAlign: TextAlign.center,
              style: nunito.s12W500.copyWith(
                  fontWeight: FontWeight.w600,
                  color: nunito.myColor.grey2
              ),
            ),
          ))
              .toList(),
        ),
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: 12,
            itemBuilder: (context, index) {
              final currentMonth = index + 1;
              return _CompactMonthCalendar(
                year: _selectedDate.year,
                month: currentMonth,
                selectedDate: _selectedDate,
                months: _months,
                onSelectDate: (currentDate) {
                  setState(() {
                    _selectedDate = currentDate;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildExpandedView(Nunito nunito) {
    return Column(
      children: [
        Text('${_selectedDate.year}',
            style: nunito.s16W800.copyWith(fontSize: 25)),
        const SizedBox(height: 16,),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: _months.length,
            itemBuilder: (context, index) {
              final month = index + 1;
              return _ExpandedMonthCalendar(
                year: _selectedDate.year,
                month: month,
                selectedDate: _selectedDate,
                months: _months,
              );
            },
          ),
        ),
      ],
    );
  }

}



class _CompactMonthCalendar extends StatefulWidget {
  const _CompactMonthCalendar({
    required this.year,
    required this.month,
    required this.selectedDate,
    required this.months,
    required this.onSelectDate,
    super.key,
  });

  final int year, month;
  final DateTime selectedDate;
  final List<String> months;
  final Function(DateTime) onSelectDate;

  @override
  State<_CompactMonthCalendar> createState() => _CompactMonthCalendarState();
}

class _CompactMonthCalendarState extends State<_CompactMonthCalendar> {
  @override
  Widget build(BuildContext context) {

    final nunito = Theme.of(context).extension<Nunito>()!;
    final color = Theme.of(context).extension<MyColor>()!;

    List<Widget> dayWidgets = [];
    final firstDay = DateTime(widget.year, widget.month, 1);
    int firstWeekday = firstDay.weekday - 1;

    for (int i = 0; i < firstWeekday; i++) {
      dayWidgets.add(const SizedBox());
    }

    final daysInMonth = DateTime(widget.year, widget.month + 1, 0).day;

    for (int i = 1; i <= daysInMonth; i++) {
      final currentDate = DateTime(widget.year, widget.month, i);
      final isSelected = currentDate.year == widget.selectedDate.year &&
          currentDate.month == widget.selectedDate.month &&
          currentDate.day == widget.selectedDate.day;

      dayWidgets.add(
        GestureDetector(
          onTap: () {
              widget.onSelectDate.call(currentDate);
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? color.orange.withOpacity(0.25)  : Colors.transparent,
              borderRadius: AppBorderRadius.all30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  i.toString(),
                  style: nunito.s18W700.copyWith(fontWeight: FontWeight.w500, color: color.black)
                ),
                isSelected ? Container(
                  width: 5,
                  height: 5.26,
                  decoration: BoxDecoration(
                    color: color.orange,
                    borderRadius: AppBorderRadius.all30,
                  ),
                ) : SizedBox.shrink()
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Text('${widget.year}', style: nunito.s16W800.copyWith(color: color.grey2, fontWeight: FontWeight.w700)),
        Text(
          widget.months[widget.month - 1],
          style: nunito.s18W700.copyWith(fontSize: 24, color: color.black)
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 7,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1,
          children: dayWidgets,
        ),
      ],
    );
  }
}

class _ExpandedMonthCalendar extends StatelessWidget {
  const _ExpandedMonthCalendar({
    required this.year,
    required this.month,
    required this.selectedDate,
    required this.months,
    super.key,
  });

  final int year, month;
  final DateTime selectedDate;
  final List<String> months;

  @override
  Widget build(BuildContext context) {
    final nunito = Theme.of(context).extension<Nunito>()!;
    final daysInMonth = DateTime(year, month + 1, 0).day;
    final firstDay = DateTime(year, month, 1);
    final firstWeekday = firstDay.weekday - 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(months[month - 1],
            style: nunito.s14W400.copyWith(
                fontWeight: FontWeight.w700, color: nunito.myColor.black)),
        // const SizedBox(height: 1),
        Expanded(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1,
            ),
            itemCount: 42,
            itemBuilder: (context, index) {
              final dayNumber = index - firstWeekday + 1;
              if (dayNumber < 1 || dayNumber > daysInMonth) {
                return const SizedBox();
              }

              final currentDate = DateTime(year, month, dayNumber);
              final isSelected = currentDate.year == selectedDate.year &&
                  currentDate.month == selectedDate.month &&
                  currentDate.day == selectedDate.day;

              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: isSelected
                        ? nunito.myColor.orange.withOpacity(0.25)
                        : null,
                    borderRadius:
                        isSelected ? AppBorderRadius.all30 : null),
                child: Text(dayNumber.toString(),
                    style: nunito.s12W500
                        .copyWith(fontSize: 10, color: nunito.myColor.black)),
              );
            },
          ),
        ),
      ],
    );
  }
}
