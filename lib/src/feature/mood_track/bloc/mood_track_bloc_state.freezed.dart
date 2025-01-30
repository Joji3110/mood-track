// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_track_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoodTrackState {
  DateTime get initialDateTime => throw _privateConstructorUsedError;
  Emotion? get emotion => throw _privateConstructorUsedError;
  String? get emotionAttributes => throw _privateConstructorUsedError;
  double get valueStressLevel => throw _privateConstructorUsedError;
  double get valueSelfEsteem => throw _privateConstructorUsedError;

  /// Create a copy of MoodTrackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoodTrackStateCopyWith<MoodTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodTrackStateCopyWith<$Res> {
  factory $MoodTrackStateCopyWith(
          MoodTrackState value, $Res Function(MoodTrackState) then) =
      _$MoodTrackStateCopyWithImpl<$Res, MoodTrackState>;
  @useResult
  $Res call(
      {DateTime initialDateTime,
      Emotion? emotion,
      String? emotionAttributes,
      double valueStressLevel,
      double valueSelfEsteem});
}

/// @nodoc
class _$MoodTrackStateCopyWithImpl<$Res, $Val extends MoodTrackState>
    implements $MoodTrackStateCopyWith<$Res> {
  _$MoodTrackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoodTrackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDateTime = null,
    Object? emotion = freezed,
    Object? emotionAttributes = freezed,
    Object? valueStressLevel = null,
    Object? valueSelfEsteem = null,
  }) {
    return _then(_value.copyWith(
      initialDateTime: null == initialDateTime
          ? _value.initialDateTime
          : initialDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emotion: freezed == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as Emotion?,
      emotionAttributes: freezed == emotionAttributes
          ? _value.emotionAttributes
          : emotionAttributes // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStressLevel: null == valueStressLevel
          ? _value.valueStressLevel
          : valueStressLevel // ignore: cast_nullable_to_non_nullable
              as double,
      valueSelfEsteem: null == valueSelfEsteem
          ? _value.valueSelfEsteem
          : valueSelfEsteem // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoodTrackStateImplCopyWith<$Res>
    implements $MoodTrackStateCopyWith<$Res> {
  factory _$$MoodTrackStateImplCopyWith(_$MoodTrackStateImpl value,
          $Res Function(_$MoodTrackStateImpl) then) =
      __$$MoodTrackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime initialDateTime,
      Emotion? emotion,
      String? emotionAttributes,
      double valueStressLevel,
      double valueSelfEsteem});
}

/// @nodoc
class __$$MoodTrackStateImplCopyWithImpl<$Res>
    extends _$MoodTrackStateCopyWithImpl<$Res, _$MoodTrackStateImpl>
    implements _$$MoodTrackStateImplCopyWith<$Res> {
  __$$MoodTrackStateImplCopyWithImpl(
      _$MoodTrackStateImpl _value, $Res Function(_$MoodTrackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoodTrackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDateTime = null,
    Object? emotion = freezed,
    Object? emotionAttributes = freezed,
    Object? valueStressLevel = null,
    Object? valueSelfEsteem = null,
  }) {
    return _then(_$MoodTrackStateImpl(
      initialDateTime: null == initialDateTime
          ? _value.initialDateTime
          : initialDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emotion: freezed == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as Emotion?,
      emotionAttributes: freezed == emotionAttributes
          ? _value.emotionAttributes
          : emotionAttributes // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStressLevel: null == valueStressLevel
          ? _value.valueStressLevel
          : valueStressLevel // ignore: cast_nullable_to_non_nullable
              as double,
      valueSelfEsteem: null == valueSelfEsteem
          ? _value.valueSelfEsteem
          : valueSelfEsteem // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MoodTrackStateImpl implements _MoodTrackState {
  _$MoodTrackStateImpl(
      {required this.initialDateTime,
      this.emotion,
      this.emotionAttributes,
      this.valueStressLevel = 3.0,
      this.valueSelfEsteem = 3.0});

  @override
  final DateTime initialDateTime;
  @override
  final Emotion? emotion;
  @override
  final String? emotionAttributes;
  @override
  @JsonKey()
  final double valueStressLevel;
  @override
  @JsonKey()
  final double valueSelfEsteem;

  @override
  String toString() {
    return 'MoodTrackState(initialDateTime: $initialDateTime, emotion: $emotion, emotionAttributes: $emotionAttributes, valueStressLevel: $valueStressLevel, valueSelfEsteem: $valueSelfEsteem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodTrackStateImpl &&
            (identical(other.initialDateTime, initialDateTime) ||
                other.initialDateTime == initialDateTime) &&
            (identical(other.emotion, emotion) || other.emotion == emotion) &&
            (identical(other.emotionAttributes, emotionAttributes) ||
                other.emotionAttributes == emotionAttributes) &&
            (identical(other.valueStressLevel, valueStressLevel) ||
                other.valueStressLevel == valueStressLevel) &&
            (identical(other.valueSelfEsteem, valueSelfEsteem) ||
                other.valueSelfEsteem == valueSelfEsteem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialDateTime, emotion,
      emotionAttributes, valueStressLevel, valueSelfEsteem);

  /// Create a copy of MoodTrackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodTrackStateImplCopyWith<_$MoodTrackStateImpl> get copyWith =>
      __$$MoodTrackStateImplCopyWithImpl<_$MoodTrackStateImpl>(
          this, _$identity);
}

abstract class _MoodTrackState implements MoodTrackState {
  factory _MoodTrackState(
      {required final DateTime initialDateTime,
      final Emotion? emotion,
      final String? emotionAttributes,
      final double valueStressLevel,
      final double valueSelfEsteem}) = _$MoodTrackStateImpl;

  @override
  DateTime get initialDateTime;
  @override
  Emotion? get emotion;
  @override
  String? get emotionAttributes;
  @override
  double get valueStressLevel;
  @override
  double get valueSelfEsteem;

  /// Create a copy of MoodTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoodTrackStateImplCopyWith<_$MoodTrackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
