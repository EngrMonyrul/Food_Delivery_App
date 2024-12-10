import 'package:flutter/material.dart';
import 'package:foodie/core/themes/text_theme_config.dart';

import 'color_scheme_config.dart';

class AppBarThemeConfig {
  AppBarThemeConfig._();

  static final lightAppBarThemeConfig = AppBarTheme(
    backgroundColor: ColorSchemeConfig.lightColorScheme.surface,
    foregroundColor: ColorSchemeConfig.lightColorScheme.onSurface,
    elevation: 0,
    titleTextStyle: TextThemeConfig.lightTextThemeConfig.titleLarge
        ?.copyWith(color: ColorSchemeConfig.lightColorScheme.onSurface),
    iconTheme: IconThemeData(
      color: ColorSchemeConfig.lightColorScheme.onSurface,
    ),
  );

  static final darkAppBarThemeConfig = AppBarTheme(
    backgroundColor: ColorSchemeConfig.darkColorScheme.surface,
    foregroundColor: ColorSchemeConfig.darkColorScheme.onSurface,
    elevation: 0,
    titleTextStyle: TextThemeConfig.darkTextThemeConfig.titleLarge
        ?.copyWith(color: ColorSchemeConfig.darkColorScheme.onSurface),
    iconTheme: IconThemeData(
      color: ColorSchemeConfig.darkColorScheme.onSurface,
    ),
  );
}
