import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mood_track/src/core/constants/assets.dart';
import 'package:mood_track/src/core/enums/slider_enum.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';
import 'package:mood_track/src/core/widgets/app_textfiled.dart';
import 'package:mood_track/src/core/widgets/custom_button.dart';
import 'package:mood_track/src/core/widgets/feel_card.dart';
import 'package:mood_track/src/core/widgets/slider_card.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_cubit.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_state.dart';
import 'package:mood_track/src/feature/mood_track/model/emotion.dart';
import 'package:mood_track/src/feature/mood_track/widgets/emotion_attributes.dart';

class DiaryBox extends StatefulWidget {
  const DiaryBox({super.key});

  @override
  State<DiaryBox> createState() => _DiaryBoxState();
}

class _DiaryBoxState extends State<DiaryBox> {
  final TextEditingController _controllerNotes = TextEditingController();
  bool _isControllerEnabled = false;

  @override
  void initState() {
    super.initState();
    _controllerNotes.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _controllerNotes.removeListener(_onTextChanged);
    _controllerNotes.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isControllerEnabled = _controllerNotes.text.trim().isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodTrackCubit, MoodTrackState>(
      builder: (context, state) {
        final l = AppLocalizations.of(context);
        final nunito = Theme.of(context).extension<Nunito>()!;
        final mediaQuery = MediaQuery.sizeOf(context);
        final bloc = context.read<MoodTrackCubit>();

        final emotions = getEmotions(l);
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
                  return GestureDetector(
                    onTap: () => bloc.onSelectedEmotion(emotion),
                    child: FeelCard(
                      emotion: emotion,
                    ),
                  );
                },
              ),
            ),
            if (state.emotion != null) ...[
              const SizedBox(height: 5),
              EmotionAttributes(
                emotion: state.emotion!,
                onSelectedEmoAtr: (emoAtr) => bloc.onSelectedEmoAtr(emoAtr),
              ),
            ],
            const SizedBox(height: 26),
            Text(l.stressLevel, style: nunito.s16W800),
            const SizedBox(height: 20),
            SliderCard(
              sliderValue: state.valueStressLevel,
              rightLabel: l.high,
              leftLabel: l.low,
              onChangedSlider: (value) =>
                  bloc.onChangedSlider(value, SliderEnum.stressLevel),
            ),
            const SizedBox(height: 36),
            Text(l.selfEsteem, style: nunito.s16W800),
            const SizedBox(height: 20),
            SliderCard(
              sliderValue: state.valueSelfEsteem,
              rightLabel: l.insecurity,
              leftLabel: l.confidence,
              onChangedSlider: (value) =>
                  bloc.onChangedSlider(value, SliderEnum.selfEsteem),
            ),
            const SizedBox(height: 36),
            Text(l.notes, style: nunito.s16W800),
            const SizedBox(height: 20),
            AppTextFiled(
              controller: _controllerNotes,
              hintText: l.enterNote,
            ),
            const SizedBox(height: 16),
            CustomButton(
              isEnabled: bloc.validate && _isControllerEnabled,
              onTap: () {
                onSave(bloc);
                _showSuccessSnackbar(context, nunito.myColor, l);
              },
            ),
            const SizedBox(height: 30),
          ],
        );
      },
    );
  }

  void onSave(MoodTrackCubit bloc) {
    bloc.onClear();
    _controllerNotes.clear();
  }

  void _showSuccessSnackbar(BuildContext context, MyColor color, AppLocalizations l) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l.dataSaved),
        backgroundColor: color.orange,
        duration: Duration(seconds: 2),
      ),
    );
  }

}
