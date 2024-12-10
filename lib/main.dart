import 'package:flutter/material.dart';
import 'package:foodie/core/routes/routes_manage.dart';
import 'package:foodie/core/routes/routes_name.dart';
import 'package:foodie/core/themes/theme_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManage.onGenerateRoutes,
      initialRoute: RoutesName.onboardingPage,
      theme: ThemeConfig.lightThemeConfig,
      darkTheme: ThemeConfig.darkThemeConfig,
    );
  }
}
