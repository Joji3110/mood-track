import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final color = Theme.of(context).extension<MyColor>()!;
    final nunito = Theme.of(context).extension<Nunito>()!;

    return FilledButton(
      onPressed: () {},
      style: Theme.of(context).filledButtonTheme.style!.copyWith(
            minimumSize: WidgetStatePropertyAll(
              Size(width, height * 0.05),
            ),
        backgroundColor: WidgetStatePropertyAll(color.orange),
          ),
      child: Text(l.save, style: nunito.s20W400.copyWith(color: color.white)),
    );
  }
}
