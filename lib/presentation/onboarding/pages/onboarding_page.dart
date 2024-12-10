import 'package:flutter/material.dart';
import 'package:foodie/core/routes/routes_name.dart';
import 'package:foodie/presentation/onboarding/widgets/onboarding_clipper.dart';
import 'package:foodie/utils/constants/colors_consts.dart';
import 'package:foodie/utils/extensions/context_ext.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final theme = context.theme;

    return Scaffold(
      body: Stack(
        children: [
          /*--------> background image <--------*/
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: ColorsConsts.imageBackground,
            child: Image.asset(
              "assets/food-delivery/food pattern.png",
              repeat: ImageRepeat.repeatY,
              color: ColorsConsts.imageBackground2,
            ),
          ),

          /*--------> chef image <--------*/
          Positioned(
            top: -80,
            right: 0,
            left: 0,
            child: Image.asset(
              "assets/food-delivery/chef.png",
            ),
          ),

          /*--------> leaf image <--------*/
          Positioned(
            top: 139,
            right: 10,
            child: Image.asset(
              "assets/food-delivery/leaf.png",
              width: 80,
            ),
          ),

          /*--------> chili image <--------*/
          Positioned(
            top: 390,
            right: 25,
            child: Image.asset(
              "assets/food-delivery/chili.png",
              width: 80,
            ),
          ),

          /*--------> ginger image <--------*/
          Positioned(
            top: 230,
            left: -20,
            child: Image.asset(
              "assets/food-delivery/ginger.png",
              width: 80,
            ),
          ),

          /*--------> content card <--------*/
          Positioned(
            bottom: 0,
            width: screenSize.width,
            child: ClipPath(
              clipper: OnBoardingClipper(),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /*--------> slogan <--------*/
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: theme.textTheme.displayMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "The Fastest In Delivery ",
                          ),
                          TextSpan(
                            text: "Food",
                            style: TextStyle().copyWith(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    /*--------> slogan 2 <--------*/
                    Text(
                      "Our job is to filling your tummy with delicious food and fast delivery.",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    /*--------> indicator <--------*/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        3,
                        (index) {
                          return Container(
                            height: 10,
                            width: index == 0 ? 20 : 10,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? theme.colorScheme.primary
                                  : Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    /*--------> button <--------*/
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          RoutesName.foodDeliveryHomePage,
                          (route) => false,
                        );
                      },
                      height: 65,
                      minWidth: 250,
                      color: Colors.red,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Get Started",
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
