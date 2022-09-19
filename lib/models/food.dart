class Food {
  String imageUrl;
  String description;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;
  Food(
    this.imageUrl,
    this.description,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about, {
    this.highLight = false,
  });

  static List<Food> generateRecommendFoods() {
    return [
      Food(
        'assets/images/dish_1.jpeg',
        'No1. in Sales',
        'Soba Soup',
        '50 mins',
        4.8,
        '325 cal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.jpeg'},
          {'Shrimp': 'assets/images/ingre2.jpeg'},
          {'Egg': 'assets/images/ingre3.webp'},
          {'Scallion': 'assets/images/ingre4.jpeg'},
        ],
        'Soba is a type of buckwheat noodle. It is served hot in a light broth with toppings such as green onions, tempura scraps, and shiitake mushrooms.',
        highLight: true,
      ),
      Food(
        'assets/images/dish_2.jpeg',
        'Highly Recommended',
        'Ratatouille Pasta',
        '45-60 mins',
        4.8,
        '325 cal',
        17,
        0,
        [
          {'Noodle': 'assets/images/ingre1.jpeg'},
          {'Shrimp': 'assets/images/ingre2.jpeg'},
          {'Egg': 'assets/images/ingre3.webp'},
          {'Scallion': 'assets/images/ingre4.jpeg'},
        ],
        'Ratatouille is a Provençal stewed vegetable dish, originating in Nice. It is traditionally made with eggplant, zucchini, tomatoes, onions, garlic, and bell peppers.',
      )
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/dish_3.jpeg',
        'Most Popular',
        'Tomato Chicken',
        '20-25 mins',
        4.8,
        '325 cal',
        14.5,
        0,
        [
          {'Noodle': 'assets/images/ingre1.jpeg'},
          {'Shrimp': 'assets/images/ingre2.jpeg'},
          {'Egg': 'assets/images/ingre3.webp'},
          {'Scallion': 'assets/images/ingre4.jpeg'},
        ],
        'Tomato Chicken is a dish of chicken and tomatoes cooked in a tomato sauce. It is a popular dish in many countries, including the United States, Canada, the United Kingdom, and Australia.',
      )
    ];
  }

  static List<Food> generateNoodlesFoods() {
    return [
      Food(
        'assets/images/dish_4.jpeg',
        'Chef\'s Choice',
        'Mee Goreng Spicy',
        '20-30 mins',
        4.8,
        '325 cal',
        14.5,
        0,
        [
          {'Noodle': 'assets/images/ingre1.jpeg'},
          {'Shrimp': 'assets/images/ingre2.jpeg'},
          {'Egg': 'assets/images/ingre3.webp'},
          {'Scallion': 'assets/images/ingre4.jpeg'},
        ],
        'Mee Goreng Spicy is a popular dish in Indonesia, Malaysia, Singapore, Brunei, and southern Thailand. It is a stir-fried noodle dish with yellow noodles, eggs, and a variety of meats and vegetables.',
      )
    ];
  }

  static List<Food> generatePizzaFoods() {
    return [
      Food(
        'assets/images/dish_5.jpeg',
        'Most Popular',
        'Hawaiian Chicken Pizza',
        '15-30 mins',
        4.8,
        '325 cal',
        14.5,
        0,
        [
          {'Noodle': 'assets/images/ingre1.jpeg'},
          {'Shrimp': 'assets/images/ingre2.jpeg'},
          {'Egg': 'assets/images/ingre3.webp'},
          {'Scallion': 'assets/images/ingre4.jpeg'},
        ],
        'Hawaiian Chicken Pizza is a pizza with chicken, pineapple, and mozzarella cheese. It is a popular pizza in the United States, Canada, and the United Kingdom.',
      )
    ];
  }
}
