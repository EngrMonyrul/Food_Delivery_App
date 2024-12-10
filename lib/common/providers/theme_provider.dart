import 'package:flutter/foundation.dart';

part 'theme_provider_impl.dart';

abstract class ThemeProvider extends ChangeNotifier {
  /* <<--------->> variables <<---------->> */
  bool _isDarkTheme = false;

  /* <<--------->> getters <<---------->> */
  bool get isDarkTheme => _isDarkTheme;

  /* <<--------->> setters <<---------->> */
  void setIsDarkTheme({bool value = false});
}
