import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:mood_track/src/core/widgets/feel_card.dart';

class DiaryBox extends StatelessWidget {
  const DiaryBox({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final nunito = Theme.of(context).extension<Nunito>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          l.whatDoYouFeel,
          style: nunito.s16W800,
        ),
        const SizedBox(height: 20),
        FeelCard()
      ],
    );
  }
}
