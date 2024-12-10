import 'package:flutter/material.dart';
import 'package:foodie/core/routes/routes_name.dart';
import 'package:foodie/presentation/foodDeliveryHomePage/pages/food_delivery_home_page.dart';
import 'package:foodie/presentation/onboarding/pages/onboarding_page.dart';

import '../../common/widgets/no_data_page.dart';
import '../../utils/constants/assets_consts.dart';

class RoutesManage {
  RoutesManage._();

  static Map<String, WidgetBuilder> routes(Object? args) => {
        RoutesName.onboardingPage: (context) => const OnboardingPage(),
        RoutesName.foodDeliveryHomePage: (context) => FoodDeliveryHomePage(),
      };

  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    final builder = routes(routeSettings.arguments)[routeSettings.name];

    if (builder != null) {
      return MaterialPageRoute(
        builder: (context) => builder(context),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => const NoDataPage(
          icon: AssetsConsts.noDataIcon,
          text: "No page found!",
        ),
      );
    }
  }
}
