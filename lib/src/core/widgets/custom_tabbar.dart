import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mood_track/src/core/constants/border_radius.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {required this.myTabs, super.key, required this.controller});

  final List<TabItem> myTabs;
  final TabController controller;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleTabSelection);
    super.dispose();
  }

  void _handleTabSelection() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<MyColor>()!;
    final nunito = Theme.of(context).extension<Nunito>()!;

    return Container(
      height: 30,
      margin: Spacing.h44V24,
      decoration: BoxDecoration(
        color: color.grey4,
        borderRadius: AppBorderRadius.all30,
      ),
      child: TabBar(
        controller: widget.controller,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          color: color.orange,
          borderRadius: AppBorderRadius.all47,
        ),
        labelColor: color.white,
        unselectedLabelColor: color.grey2,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        tabs: widget.myTabs.map((tab) {
          return Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  tab.icon,
                  colorFilter: ColorFilter.mode(
                    widget.controller.index == tab.index
                        ? color.white
                        : color.grey2,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  tab.label,
                  style: nunito.s12W500,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class TabItem {
  final String icon;
  final String label;
  final int index;

  const TabItem({
    required this.icon,
    required this.label,
    required this.index,
  });
}
