import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mood_track/src/core/constants/app_shadows.dart';
import 'package:mood_track/src/core/constants/assets.dart';
import 'package:mood_track/src/core/constants/border_radius.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_cubit.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_state.dart';
import 'package:mood_track/src/feature/mood_track/model/emotion.dart';

class FeelCard extends StatelessWidget {
  const FeelCard({required this.emotion,super.key});

  final Emotion emotion;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<MyColor>()!;
    final nunito = Theme.of(context).extension<Nunito>()!;
    final state = context.watch<MoodTrackCubit>().state;

    final isSelected = state.emotion?.emotionName == emotion.emotionName;

    return Container(
      padding: Spacing.l15R15T23B30,
      decoration: BoxDecoration(
        border: isSelected ? Border.all(width: 2, color: color.orange) : null,
        color: color.white,
        borderRadius: AppBorderRadius.all76,
        boxShadow: !isSelected? AppShadows.lightList : null,
      ),
      child: Column(
        children: [
          Image.asset(
            emotion.asset,
            height: 50,
            width: 53,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 5),
          Text(emotion.emotionName, style: nunito.s11W400)
        ],
      ),
    );
  }
}
