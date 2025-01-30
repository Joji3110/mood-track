import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mood_track/src/core/enums/slider_enum.dart';
import 'package:mood_track/src/feature/mood_track/bloc/mood_track_bloc_state.dart';
import 'package:mood_track/src/feature/mood_track/model/emotion.dart';

class MoodTrackCubit extends Cubit<MoodTrackState> {
  MoodTrackCubit() : super(MoodTrackState(initialDateTime: DateTime.now())) {
    print('object');
  }

  void onSelectedEmotion(Emotion emotion) {
    print(state.emotion == emotion);
    emit(state.copyWith(emotion: state.emotion == emotion ? null : emotion));
    debugPrint('SELECTED EMO: ${emotion.asset}');
  }

  void onSelectedEmoAtr(String emoAtr) {
    emit(state.copyWith(emotionAttributes: emoAtr));
    debugPrint('SELECTED EMOAtr: $emoAtr');
  }

  void onChangedSlider(double value, SliderEnum sliderEnum) {
    if (sliderEnum == SliderEnum.stressLevel) {
      emit(state.copyWith(valueStressLevel: value));
      debugPrint('valueStressLevel: $value');
    } else {
      emit(state.copyWith(valueSelfEsteem: value));
      debugPrint('valueSelfEsteem: $value');
    }
  }

  bool get validate {
    return state.emotion != null && state.emotionAttributes != null;
  }

  void onClear() {
    emit(state.copyWith(emotionAttributes: null, emotion: null, valueSelfEsteem: 3, valueStressLevel: 3));
  }
}
