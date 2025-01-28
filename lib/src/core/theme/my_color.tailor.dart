// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'my_color.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$MyColorTailorMixin on ThemeExtension<MyColor> {
  Color get orange;
  Color get black;
  Color get white;
  Color get grey2;
  Color get grey4;
  Color get grey5;

  @override
  MyColor copyWith({
    Color? orange,
    Color? black,
    Color? white,
    Color? grey2,
    Color? grey4,
    Color? grey5,
  }) {
    return MyColor(
      orange: orange ?? this.orange,
      black: black ?? this.black,
      white: white ?? this.white,
      grey2: grey2 ?? this.grey2,
      grey4: grey4 ?? this.grey4,
      grey5: grey5 ?? this.grey5,
    );
  }

  @override
  MyColor lerp(covariant ThemeExtension<MyColor>? other, double t) {
    if (other is! MyColor) return this as MyColor;
    return MyColor(
      orange: Color.lerp(orange, other.orange, t)!,
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
      grey2: Color.lerp(grey2, other.grey2, t)!,
      grey4: Color.lerp(grey4, other.grey4, t)!,
      grey5: Color.lerp(grey5, other.grey5, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyColor &&
            const DeepCollectionEquality().equals(orange, other.orange) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(grey2, other.grey2) &&
            const DeepCollectionEquality().equals(grey4, other.grey4) &&
            const DeepCollectionEquality().equals(grey5, other.grey5));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(orange),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(white),
      const DeepCollectionEquality().hash(grey2),
      const DeepCollectionEquality().hash(grey4),
      const DeepCollectionEquality().hash(grey5),
    );
  }
}

extension MyColorBuildContextProps on BuildContext {
  MyColor get myColor => Theme.of(this).extension<MyColor>()!;

  /// HEX: #FF8702
  Color get orange => myColor.orange;

  /// HEX #4C4C69
  Color get black => myColor.black;
  Color get white => myColor.white;

  /// HEX #BCBCBF
  Color get grey2 => myColor.grey2;

  /// HEX #F2F2F2
  Color get grey4 => myColor.grey4;

  /// HEX #E1DDD8
  Color get grey5 => myColor.grey5;
}
