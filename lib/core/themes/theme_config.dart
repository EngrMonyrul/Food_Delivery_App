import 'package:flutter/material.dart';
import 'package:foodie/core/themes/text_theme_config.dart';

import '../../utils/enums/fonts_enum.dart';
import 'appbar_theme_config.dart';
import 'card_theme_config.dart';
import 'color_scheme_config.dart';
import 'elevated_button_theme_config.dart';
import 'input_decoration_theme_config.dart';

class ThemeConfig {
  ThemeConfig._();

  /* <<--------->> light theme <<---------->> */
  static final lightThemeConfig = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontsEnum.poppins.text,
    colorScheme: ColorSchemeConfig.lightColorScheme,
    textTheme: TextThemeConfig.lightTextThemeConfig,
    cardTheme: CardThemeConfig.lightCardThemeConfig,
    appBarTheme: AppBarThemeConfig.lightAppBarThemeConfig,
    elevatedButtonTheme: ElevatedButtonThemeConfig.lightElevatedTheme,
    inputDecorationTheme: InputDecorationThemeConfig.lightInputDecoration,
  );

  /* <<--------->> dark theme <<---------->> */
  static final darkThemeConfig = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontsEnum.poppins.text,
    colorScheme: ColorSchemeConfig.darkColorScheme,
    textTheme: TextThemeConfig.darkTextThemeConfig,
    cardTheme: CardThemeConfig.darkCardThemeConfig,
    appBarTheme: AppBarThemeConfig.darkAppBarThemeConfig,
    elevatedButtonTheme: ElevatedButtonThemeConfig.darkElevatedTheme,
    inputDecorationTheme: InputDecorationThemeConfig.darkInputDecoration,
  );
}
