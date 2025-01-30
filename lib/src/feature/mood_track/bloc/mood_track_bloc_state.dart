import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mood_track/src/feature/mood_track/model/emotion.dart';

part 'mood_track_bloc_state.freezed.dart';

@freezed
class MoodTrackState with _$MoodTrackState {
  factory MoodTrackState({
    required DateTime initialDateTime,
    Emotion? emotion,
    String? emotionAttributes,
    @Default(3.0) double valueStressLevel,
    @Default(3.0) double valueSelfEsteem,
}) = _MoodTrackState;
}
