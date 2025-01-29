import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mood_track/src/core/constants/assets.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:mood_track/src/core/widgets/custom_calendar.dart';
import 'package:mood_track/src/core/widgets/custom_tabbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/feature/mood_track/widgets/diary_box.dart';


class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nunito = Theme.of(context).extension<Nunito>()!;
    final l = AppLocalizations.of(context);


    final myTabs = [
      TabItem(
        icon: Assets.diary,
        label: l.diary,
        index: 0,
      ),
      TabItem(
        icon: Assets.statistics,
        label: l.statistics,
        index: 1,
      ),
    ];

    void goPageCalendar(context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CustomCalendar();
      }));
    }

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('1 января 09:00', style: nunito.s18W700),
          actions: [
            GestureDetector(
              onTap: () => goPageCalendar(context),
              child: SvgPicture.asset(
                Assets.mySessions,
              ),
            ),
            const SizedBox(width: 20),
          ],
          centerTitle: true,
        ),
        body: Builder(builder: (context) {
          final TabController tabController = DefaultTabController.of(context);
          return Column(
            children: [
              CustomTabBar(
                myTabs: myTabs,
                controller: tabController,
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: Spacing.h20V30,
                        child: DiaryBox(),
                      ),
                    ),
                    // Таб Статистика
                    Center(child: Text('Статистика content')),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

