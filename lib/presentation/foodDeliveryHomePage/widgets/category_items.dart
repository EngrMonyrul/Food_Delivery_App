import 'package:flutter/material.dart';
import 'package:foodie/models/category.dart';
import 'package:foodie/utils/constants/colors_consts.dart';
import 'package:foodie/utils/constants/components_consts.dart';
import 'package:foodie/utils/extensions/context_ext.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({super.key});

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  Category _category = ComponentsConsts.categoryItems.first;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10),
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          ComponentsConsts.categoryItems.length,
          (index) {
            final item = ComponentsConsts.categoryItems[index];

            return Padding(
              padding: EdgeInsets.only(
                  left: 25,
                  right: index == ComponentsConsts.categoryItems.length - 1
                      ? 25
                      : 0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _category = item;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: _category == item ? Colors.red : ColorsConsts.grey1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      /*--------> item image <--------*/
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _category == item
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Image.asset(
                          item.image ?? "",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),

                      /*--------> item title <--------*/
                      Text(
                        item.name ?? "",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              _category == item ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
