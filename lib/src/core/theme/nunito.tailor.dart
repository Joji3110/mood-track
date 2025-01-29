// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'nunito.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$NunitoTailorMixin on ThemeExtension<Nunito> {
  TextStyle get s12W500;
  TextStyle get s18W700;
  TextStyle get s16W800;
  TextStyle get s11W400;
  TextStyle get s20W400;
  TextStyle get s14W400;
  MyColor get myColor;

  @override
  Nunito copyWith({
    TextStyle? s12W500,
    TextStyle? s18W700,
    TextStyle? s16W800,
    TextStyle? s11W400,
    TextStyle? s20W400,
    TextStyle? s14W400,
    MyColor? myColor,
  }) {
    return Nunito(
      s12W500: s12W500 ?? this.s12W500,
      s18W700: s18W700 ?? this.s18W700,
      s16W800: s16W800 ?? this.s16W800,
      s11W400: s11W400 ?? this.s11W400,
      s20W400: s20W400 ?? this.s20W400,
      s14W400: s14W400 ?? this.s14W400,
      myColor: myColor ?? this.myColor,
    );
  }

  @override
  Nunito lerp(covariant ThemeExtension<Nunito>? other, double t) {
    if (other is! Nunito) return this as Nunito;
    return Nunito(
      s12W500: TextStyle.lerp(s12W500, other.s12W500, t)!,
      s18W700: TextStyle.lerp(s18W700, other.s18W700, t)!,
      s16W800: TextStyle.lerp(s16W800, other.s16W800, t)!,
      s11W400: TextStyle.lerp(s11W400, other.s11W400, t)!,
      s20W400: TextStyle.lerp(s20W400, other.s20W400, t)!,
      s14W400: TextStyle.lerp(s14W400, other.s14W400, t)!,
      myColor: myColor.lerp(other.myColor, t) as MyColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nunito &&
            const DeepCollectionEquality().equals(s12W500, other.s12W500) &&
            const DeepCollectionEquality().equals(s18W700, other.s18W700) &&
            const DeepCollectionEquality().equals(s16W800, other.s16W800) &&
            const DeepCollectionEquality().equals(s11W400, other.s11W400) &&
            const DeepCollectionEquality().equals(s20W400, other.s20W400) &&
            const DeepCollectionEquality().equals(s14W400, other.s14W400) &&
            const DeepCollectionEquality().equals(myColor, other.myColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(s12W500),
      const DeepCollectionEquality().hash(s18W700),
      const DeepCollectionEquality().hash(s16W800),
      const DeepCollectionEquality().hash(s11W400),
      const DeepCollectionEquality().hash(s20W400),
      const DeepCollectionEquality().hash(s14W400),
      const DeepCollectionEquality().hash(myColor),
    );
  }
}

extension NunitoBuildContextProps on BuildContext {
  Nunito get nunito => Theme.of(this).extension<Nunito>()!;
  TextStyle get s12W500 => nunito.s12W500;
  TextStyle get s18W700 => nunito.s18W700;
  TextStyle get s16W800 => nunito.s16W800;
  TextStyle get s11W400 => nunito.s11W400;
  TextStyle get s20W400 => nunito.s20W400;
  TextStyle get s14W400 => nunito.s14W400;
  MyColor get myColor => nunito.myColor;
}
