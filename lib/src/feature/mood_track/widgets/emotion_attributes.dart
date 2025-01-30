import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mood_track/src/core/constants/app_shadows.dart';
import 'package:mood_track/src/core/constants/border_radius.dart';
import 'package:mood_track/src/core/constants/spacing.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_cubit.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_state.dart';
import 'package:mood_track/src/feature/mood_track/model/emotion.dart';

class EmotionAttributes extends StatelessWidget {
  const EmotionAttributes(
      {required this.emotion,
      required this.onSelectedEmoAtr,
      super.key});

  final Emotion emotion;
  final Function(String) onSelectedEmoAtr;

  @override
  Widget build(BuildContext context) {
    final nunito = Theme.of(context).extension<Nunito>()!;
    final state = context.watch<MoodTrackCubit>().state;


    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        for (var attribute in emotion.attributes)
          GestureDetector(
            onTap: () => onSelectedEmoAtr.call(attribute),
            child: Container(
              padding: Spacing.h8V3,
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.all3,
                color: state.emotionAttributes == attribute
                    ? nunito.myColor.orange
                    : nunito.myColor.white,
                boxShadow: AppShadows.lightList,
              ),
              child: Text(
                attribute,
                style: state.emotionAttributes == attribute
                    ? nunito.s11W400.copyWith(color: nunito.myColor.white)
                    : nunito.s11W400,
              ),
            ),
          )
      ],
    );
  }
}
