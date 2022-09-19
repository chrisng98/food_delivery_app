import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/detail/widget/floating_button_widget.dart';
import 'package:food_delivery_app/screens/detail/widget/food_detail.dart';
import 'package:food_delivery_app/screens/detail/widget/food_image.dart';
import 'package:food_delivery_app/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              CustomAppBar(
                Icons.arrow_back_ios_outlined,
                Icons.favorite_outline,
                leftCallBack: () => Navigator.of(context).pop(),
              ),
              FoodImage(food),
              FoodDetail(food),
            ],
          ),
        ),
        floatingActionButton: FloatingButtonWidget(food));
  }
}
