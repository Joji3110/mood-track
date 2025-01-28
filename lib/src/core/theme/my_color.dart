import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'my_color.tailor.dart';

@TailorMixin()
final class MyColor extends ThemeExtension<MyColor> with _$MyColorTailorMixin {
  const MyColor({
    required this.orange,
    required this.black,
    required this.white,
    required this.grey2,
    required this.grey4,
    required this.grey5,
  });

  /// HEX: #FF8702
  @override
  final Color orange;

  /// HEX #4C4C69
  @override
  final Color black;

  @override
  final Color white;

  /// HEX #BCBCBF
  @override
  final Color grey2;

  /// HEX #F2F2F2
  @override
  final Color grey4;

  /// HEX #E1DDD8
  @override
  final Color grey5;

  factory MyColor.light() {
    return MyColor(
      orange: Color(0xFFFF8702),
      black: Color(0xFF4C4C69),
      white: Color(0xFFFFFFFF),
      grey2: Color(0xFFBCBCBF),
      grey4: Color(0xFFF2F2F2),
      grey5: Color(0xFFE1DDD8),
    );
  }
}
