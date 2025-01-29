import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mood_track/src/core/constants/app_shadows.dart';
import 'package:mood_track/src/core/constants/assets.dart';
import 'package:mood_track/src/core/constants/border_radius.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FeelCard extends StatelessWidget {
  const FeelCard({required this.image, required this.emotionName, super.key});

  final String image;
  final String emotionName;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<MyColor>()!;
    final nunito = Theme.of(context).extension<Nunito>()!;

    return Container(
      padding: Spacing.l15R15T23B30,
      decoration: BoxDecoration(
        color: color.white,
        borderRadius: AppBorderRadius.all76,
        boxShadow: AppShadows.lightList,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 50,
            width: 53,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 5),
          Text(emotionName, style: nunito.s11W400)
        ],
      ),
    );
  }
}
