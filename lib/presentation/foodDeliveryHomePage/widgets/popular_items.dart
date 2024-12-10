import 'package:flutter/material.dart';
import 'package:foodie/models/food_model.dart';
import 'package:foodie/utils/constants/components_consts.dart';
import 'package:foodie/utils/extensions/context_ext.dart';

class PopularItems extends StatefulWidget {
  const PopularItems({super.key});

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  /*--------> variables <--------*/
  List<FoodModel> _foods = ComponentsConsts.foodProduct;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final theme = context.theme;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: List.generate(
          _foods.length,
          (index) {
            final item = _foods[index];

            return Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: index == _foods.length - 1 ? 25 : 0,
              ),
              child: GestureDetector(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    /*--------> card size <--------*/
                    Container(
                      height: 260,
                      width: (screenSize.width) * .5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            spreadRadius: 10,
                            blurRadius: 20,
                          ),
                        ],
                      ),
                    ),

                    /*--------> items <--------*/
                    Container(
                      width: screenSize.width * .5,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          /*--------> product item <--------*/
                          Hero(
                            tag: item.imageCard,
                            child: Image.asset(
                              item.imageCard,
                              height: 110,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                          ),

                          /*--------> product name <--------*/
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: Text(
                              item.name,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),

                          /*--------> special items <--------*/
                          Text(
                            item.specialItems,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              height: 0.1,
                              letterSpacing: 1.1,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          /*--------> price label <--------*/
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$ ",
                                ),
                                TextSpan(
                                  text: "${item.price}",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
