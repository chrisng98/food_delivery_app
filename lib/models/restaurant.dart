import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String description;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.description,
    this.score,
    this.menu,
  );

  static Restaurant generateRestaurant() {
    return Restaurant('Restaurant', '20-30 min', '1.5 km', 'Restaurant', 'assets/images/restaurant_logo.webp', 'Orange sandwiches is delicious', 4.7, {
      'Recommend': Food.generateRecommendFoods(),
      'Popular': Food.generatePopularFoods(),
      'Noodles': Food.generateNoodlesFoods(),
      'Pizza': Food.generatePizzaFoods(),
    });
  }
}
