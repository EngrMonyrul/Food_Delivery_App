import 'package:flutter/material.dart';
import 'package:foodie/core/themes/text_theme_config.dart';

import 'color_scheme_config.dart';

class InputDecorationThemeConfig {
  InputDecorationThemeConfig._();

  static final lightInputDecoration = InputDecorationTheme(
    isDense: true,
    hintStyle: TextThemeConfig.lightTextThemeConfig.bodyMedium?.copyWith(
      color: ColorSchemeConfig.lightColorScheme.outline,
    ),
    errorStyle: TextThemeConfig.lightTextThemeConfig.labelMedium?.copyWith(
      color: ColorSchemeConfig.lightColorScheme.error,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
        color: ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
        color: ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
          color: ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: ColorSchemeConfig.lightColorScheme.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: ColorSchemeConfig.lightColorScheme.error),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    labelStyle: TextThemeConfig.lightTextThemeConfig.bodyMedium?.copyWith(
      color: ColorSchemeConfig.lightColorScheme.outline,
    ),
    prefixIconColor: WidgetStateColor.resolveWith(
      (states) {
        return states.contains(WidgetState.focused)
            ? ColorSchemeConfig.lightColorScheme.onSurface
            : ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7);
      },
    ),
    suffixIconColor: WidgetStateColor.resolveWith(
      (states) {
        return states.contains(WidgetState.focused)
            ? ColorSchemeConfig.lightColorScheme.onSurface
            : ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7);
      },
    ),
  );

  static final darkInputDecoration = InputDecorationTheme(
    isDense: true,
    hintStyle: TextThemeConfig.darkTextThemeConfig.bodyMedium?.copyWith(
      color: ColorSchemeConfig.darkColorScheme.outline,
    ),
    errorStyle: TextThemeConfig.darkTextThemeConfig.labelMedium?.copyWith(
      color: ColorSchemeConfig.darkColorScheme.error,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
        color: ColorSchemeConfig.darkColorScheme.outline.withOpacity(0.7),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
        color: ColorSchemeConfig.darkColorScheme.outline.withOpacity(0.7),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
          color: ColorSchemeConfig.darkColorScheme.outline.withOpacity(0.7)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: ColorSchemeConfig.darkColorScheme.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: ColorSchemeConfig.darkColorScheme.error),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    labelStyle: TextThemeConfig.darkTextThemeConfig.bodyMedium?.copyWith(
      color: ColorSchemeConfig.darkColorScheme.outline,
    ),
    prefixIconColor: WidgetStateColor.resolveWith(
      (states) {
        return states.contains(WidgetState.focused)
            ? ColorSchemeConfig.darkColorScheme.onSurface
            : ColorSchemeConfig.darkColorScheme.outline.withOpacity(0.7);
      },
    ),
    suffixIconColor: WidgetStateColor.resolveWith(
      (states) {
        return states.contains(WidgetState.focused)
            ? ColorSchemeConfig.darkColorScheme.onSurface
            : ColorSchemeConfig.darkColorScheme.outline.withOpacity(0.7);
      },
    ),
  );
}
