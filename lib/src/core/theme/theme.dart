import 'package:flutter/material.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

final lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightColor.milkyWhite,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColor.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _lightColor.white,
      hintStyle: _lightText.s14W400,
      isDense: true,
      isCollapsed: false,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          _lightColor.orange,
        ),
      ),
    ),
    sliderTheme: SliderThemeData(
      // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
      // overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
      thumbColor: _lightColor.orange, // Внешний круг (белый)
      activeTrackColor: _lightColor.orange, // Цвет активной дорожки
      inactiveTrackColor: _lightColor.grey5, // Цвет неактивной дорожки
      overlayColor: _lightColor.orange.withOpacity(0.2), // Цвет наложения при удерживании
      // valueIndicatorColor: _lightColor.orange, // Цвет всплывающей подсказки
      trackHeight: 6.0,
    ),
    extensions: [
      //  -- Light Color -- //
      _lightColor,
      _lightText,
    ]);

final _lightColor = MyColor.light();
final _lightText = Nunito.light();
