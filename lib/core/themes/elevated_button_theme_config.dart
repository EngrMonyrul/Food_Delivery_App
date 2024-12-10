import 'package:flutter/material.dart';
import 'package:foodie/core/themes/text_theme_config.dart';

import 'color_scheme_config.dart';

class ElevatedButtonThemeConfig {
  ElevatedButtonThemeConfig._();

  static final lightElevatedTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: const WidgetStatePropertyAll(1),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (states) {
          return states.contains(WidgetState.disabled)
              ? ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.5)
              : ColorSchemeConfig.lightColorScheme.primary;
        },
      ),
      foregroundColor:
          WidgetStatePropertyAll(ColorSchemeConfig.lightColorScheme.onPrimary),
      shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      textStyle: WidgetStatePropertyAll(
        TextThemeConfig.lightTextThemeConfig.titleMedium
            ?.copyWith(color: ColorSchemeConfig.lightColorScheme.onTertiary),
      ),
      overlayColor: WidgetStateProperty.resolveWith(
        (states) {
          return states.contains(WidgetState.pressed)
              ? ColorSchemeConfig.lightColorScheme.tertiary.withOpacity(0.2)
              : null;
        },
      ),
    ),
  );

  static final darkElevatedTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: const WidgetStatePropertyAll(1),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (states) {
          return states.contains(WidgetState.disabled)
              ? ColorSchemeConfig.darkColorScheme.outline.withOpacity(0.5)
              : ColorSchemeConfig.darkColorScheme.primary;
        },
      ),
      foregroundColor:
          WidgetStatePropertyAll(ColorSchemeConfig.darkColorScheme.onPrimary),
      shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      textStyle: WidgetStatePropertyAll(
        TextThemeConfig.darkTextThemeConfig.titleMedium
            ?.copyWith(color: ColorSchemeConfig.darkColorScheme.onTertiary),
      ),
      overlayColor: WidgetStateProperty.resolveWith(
        (states) {
          return states.contains(WidgetState.pressed)
              ? ColorSchemeConfig.darkColorScheme.tertiary.withOpacity(0.2)
              : null;
        },
      ),
    ),
  );
}
