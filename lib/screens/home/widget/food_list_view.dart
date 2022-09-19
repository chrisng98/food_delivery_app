import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/detail/detail.dart';
import 'package:food_delivery_app/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(this.selected, this.callback, this.pageController, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: PageView(
          controller: pageController,
          onPageChanged: (int index) {
            callback(index);
          },
          children: category
              .map((e) => ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: restaurant.menu[category[selected]]!.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(restaurant.menu[category[selected]]![index]),
                        ),
                      ),
                      child: FoodItem(restaurant.menu[category[selected]]![index]),
                    ),
                    separatorBuilder: (_, index) => const SizedBox(
                      height: 20,
                    ),
                  ))
              .toList(),
        ));
  }
}
