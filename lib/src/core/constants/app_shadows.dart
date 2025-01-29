import 'package:flutter/cupertino.dart';

abstract final class AppShadows {
  const AppShadows._();

  static BoxShadow get light => BoxShadow(
    color: const Color(0xFFB6A1C0).withValues(alpha: 0.11),
    // Цвет тени с прозрачностью 11%
    blurRadius: 10.8,
    // Радиус размытия
    offset: const Offset(2, 4),
    // Смещение по X (2) и Y (4)
    spreadRadius: 0, // Расширение тени (здесь 0)
  );

  static List<BoxShadow> get lightList => [light];

}