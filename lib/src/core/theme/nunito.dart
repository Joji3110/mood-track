
import 'package:flutter/material.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'nunito.tailor.dart';

@TailorMixin()
final class Nunito extends ThemeExtension<Nunito> with _$NunitoTailorMixin{

  const Nunito({
    required this.s12W500,
    required this.s18W700,
    required this.s16W800,
    required this.s11W400,
    required this.s20W400,
    required this.myColor
  });

  @override
  final TextStyle s12W500;
  @override
  final TextStyle s18W700;
  @override
  final TextStyle s16W800;
  @override
  final TextStyle s11W400;
  @override
  final TextStyle s20W400;
  @override
  final MyColor myColor;

  factory Nunito.light() {
    final myColor = MyColor.light();
    return Nunito(
      s12W500:  TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      s18W700:  TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: myColor.grey2,
      ),
      s16W800:  TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: myColor.black,
      ),
      s11W400:  TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: myColor.black,
      ),
      s20W400: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: myColor.grey2,
      ),
      myColor: myColor
    );
  }



}