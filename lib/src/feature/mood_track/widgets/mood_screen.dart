import 'package:flutter/material.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nunito = Theme.of(context).extension<Nunito>()!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Mood Screen'),
      ),
    );
  }
}
