import 'package:flutter/material.dart';

class ColorSchemeConfig {
  ColorSchemeConfig._();

  /* <<--------->> light color scheme <<---------->> */
  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.orange,
    primary: Colors.orange,
    onPrimary: Colors.white,
    secondary: Colors.purpleAccent,
    onSecondary: Colors.white,
    tertiary: Colors.grey,
    onTertiary: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    outline: Colors.grey,
    brightness: Brightness.light,
  );

  /* <<--------->> dark color scheme <<---------->> */
  static final darkColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.orange,
    primary: Colors.orange,
    onPrimary: Colors.white,
    secondary: Colors.purpleAccent,
    onSecondary: Colors.white,
    tertiary: Colors.grey,
    onTertiary: Colors.white,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    outline: Colors.grey,
    brightness: Brightness.light,
  );
}
