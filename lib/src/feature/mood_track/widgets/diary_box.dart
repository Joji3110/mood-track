import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/core/constants/assets.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:mood_track/src/core/widgets/app_textfiled.dart';
import 'package:mood_track/src/core/widgets/custom_button.dart';
import 'package:mood_track/src/core/widgets/feel_card.dart';
import 'package:mood_track/src/core/widgets/slider_card.dart';

class DiaryBox extends StatelessWidget {
  const DiaryBox({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final nunito = Theme.of(context).extension<Nunito>()!;
    final mediaQuery = MediaQuery.sizeOf(context);

    final emotions = [
      {'asset': Assets.joy, 'name': l.joy},
      {'asset': Assets.fear, 'name': l.fear},
      {'asset': Assets.rabies, 'name': l.rabies},
      {'asset': Assets.sadness, 'name': l.sadness},
      {'asset': Assets.calmness, 'name': l.calmness},
      {'asset': Assets.force, 'name': l.force},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l.whatDoYouFeel,
          style: nunito.s16W800,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: mediaQuery.height * 0.15,
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 10.0),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: emotions.length,
            separatorBuilder: (context, index) => SizedBox(
              width: 12,
            ),
            itemBuilder: (context, index) {
              final emotion = emotions[index];
              return FeelCard(
                image: emotion['asset'] as String,
                emotionName: emotion['name'] as String,
              );
            },
          ),
        ),
        const SizedBox(height: 26),
        Text(l.stressLevel, style: nunito.s16W800),
        const SizedBox(height: 20),
        SliderCard(
          rightLabel: l.high,
          leftLabel: l.low,
        ),
        const SizedBox(height: 36),
        Text(l.selfEsteem, style: nunito.s16W800),
        const SizedBox(height: 20),
        SliderCard(
          rightLabel: l.insecurity,
          leftLabel: l.confidence,
        ),
        const SizedBox(height: 36),
        Text(l.notes, style: nunito.s16W800),
        const SizedBox(height: 20),
        AppTextFiled(
          controller: TextEditingController(),
          hintText: l.enterNote,
        ),
        const SizedBox(height: 16),
        CustomButton(),
        const SizedBox(height: 30),

      ],
    );
  }
}
