import 'package:flutter/material.dart';

import 'color_scheme_config.dart';

class CardThemeConfig {
  CardThemeConfig._();

  /* <<--------->> light theme config <<---------->> */
  static final lightCardThemeConfig = CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
    ),
    color: ColorSchemeConfig.lightColorScheme.surface,
    margin: EdgeInsets.zero,
  );

  /* <<--------->> dark theme config <<---------->> */
  static final darkCardThemeConfig = CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
    ),
    color: ColorSchemeConfig.darkColorScheme.surface,
    margin: EdgeInsets.zero,
  );
}
