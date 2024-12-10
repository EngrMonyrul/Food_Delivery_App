import 'package:flutter/material.dart';
import 'package:foodie/common/widgets/custom_appbar.dart';
import 'package:foodie/models/category.dart';
import 'package:foodie/models/food_model.dart';
import 'package:foodie/presentation/foodDeliveryHomePage/widgets/banner_section.dart';
import 'package:foodie/presentation/foodDeliveryHomePage/widgets/category_items.dart';
import 'package:foodie/presentation/foodDeliveryHomePage/widgets/popular_items.dart';
import 'package:foodie/utils/constants/colors_consts.dart';
import 'package:foodie/utils/extensions/context_ext.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      /*--------> appbar <--------*/
      appBar: CustomAppbar(
        actions: [
          SizedBox(
            width: 25,
          ),

          /*--------> drawer icon <--------*/
          Container(
            height: 45,
            width: 45,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsConsts.grey1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/food-delivery/icon/dash.png"),
          ),
          Spacer(),

          /*--------> location data <--------*/
          Row(
            children: [
              /*--------> location <--------*/
              Icon(
                Icons.location_on_outlined,
                color: Colors.red,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),

              /*--------> location name <--------*/
              Text(
                "Dhaka, Bangladesh",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(
                width: 5,
              ),

              /*--------> location dropdown <--------*/
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.orange,
                size: 18,
              ),
            ],
          ),
          Spacer(),

          /*--------> profile icon <--------*/
          Container(
            height: 45,
            width: 45,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsConsts.grey1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/food-delivery/profile.png"),
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),

      /*--------> body <--------*/
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 27,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),

                /*--------> banner <--------*/
                BannerSection(),
                SizedBox(
                  height: 35,
                ),

                /*--------> category label <--------*/
                Text(
                  "Categories",
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          /*--------> category items <--------*/
          CategoryItems(),
          SizedBox(
            height: 20,
          ),

          /*--------> popular now label <--------*/
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*--------> popular now text <--------*/
                Text(
                  "Popular Now",
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /*--------> view all text <--------*/
                Row(
                  children: [
                    /*--------> view all label <--------*/
                    Text(
                      "View All",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    /*--------> arrow icon <--------*/
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /*--------> popular items <--------*/
          PopularItems(),
        ],
      ),
    );
  }
}
