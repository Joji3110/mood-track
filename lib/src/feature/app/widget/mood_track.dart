import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mood_track/src/core/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_cubit.dart';
import 'package:mood_track/src/feature/mood_track/widgets/mood_screen.dart';

class MoodTrack extends StatelessWidget {
  const MoodTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider(
        create: (context) => MoodTrackCubit(),
        child: MoodScreen(),
      ),
    );
  }
}
