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
      thumbColor: _lightColor.white,
      activeTrackColor: _lightColor.grey5,
      inactiveTrackColor: _lightColor.grey5,
      overlayColor: _lightColor.orange.withOpacity(0.2),
      trackHeight: 6.0,
      disabledInactiveTrackColor: _lightColor.grey5
    ),
    extensions: [
      //  -- Light Color -- //
      _lightColor,
      _lightText,
    ]);

final _lightColor = MyColor.light();
final _lightText = Nunito.light();
