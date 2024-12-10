part of 'theme_provider.dart';

class ThemeProviderImpl extends ThemeProvider {
  @override
  void setIsDarkTheme({bool value = false}) {
    _isDarkTheme = value;

    notifyListeners();
  }
}
