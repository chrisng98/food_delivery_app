import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodIngredient extends StatelessWidget {
  final Food food;
  const FoodIngredient(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ingredient',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      food.ingredients[index].values.first,
                      height: 40,
                      width: 52,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      food.ingredients[index].keys.first,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
              itemCount: food.ingredients.length,
            ),
          ),
        ],
      ),
    );
  }
}
