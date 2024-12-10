import 'package:flutter/material.dart';
import 'package:foodie/utils/extensions/context_ext.dart';

import '../../../utils/constants/colors_consts.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Container(
      height: 160,
      padding: EdgeInsets.only(
        top: 15,
        left: 25,
        right: 25,
      ),
      decoration: BoxDecoration(
        color: ColorsConsts.imageBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),

                /*--------> slogan <--------*/
                RichText(
                  text: TextSpan(
                    style: theme.textTheme.titleSmall,
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
                  height: 10,
                ),

                /*--------> book now button <--------*/
                MaterialButton(
                  color: Colors.red,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Order Now",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),

          /*--------> courier image <--------*/
          Image.asset("assets/food-delivery/courier.png"),
        ],
      ),
    );
  }
}
