import 'package:flutter/material.dart';
import 'package:mood_track/src/core/theme/my_color.dart';
import 'package:mood_track/src/core/theme/nunito.dart';

final lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightColor.white,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColor.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          _lightColor.orange,
        ),
      ),
    ),
    extensions: [
      //  -- Light Color -- //
      _lightColor,
      _lightText,
    ]);

final _lightColor = MyColor.light();
final _lightText = Nunito.light();
