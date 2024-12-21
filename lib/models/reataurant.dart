import 'package:food_delivery_app/models/food.dart';

class Reataurant {
  final List<Food> _menu = [
    Food(
      name: "classic cheeseBurger",
      description:
          "a juicy beef with melted cheese, tomato,lettuce, and a hint of onion pickle",
      imagePath: "lib/assets/image1.png",
      price: 0.99,
      category: foodCategory.burgers,
      availableAddon: [
        Addon(name: "extra cheese", price: 0.09),
        Addon(name: "Bacon", price: 2.09),
        Addon(name: "Avocado", price: 3.09),
      ],
    ),
    Food(
      name: "classic cheeseBurger",
      description:
          "a juicy beef with melted cheese, tomato,lettuce, and a hint of onion pickle",
      imagePath: "lib/assets/image1.png",
      price: 0.99,
      category: foodCategory.burgers,
      availableAddon: [
        Addon(name: "extra cheese", price: 0.09),
        Addon(name: "Bacon", price: 2.09),
        Addon(name: "Avocado", price: 3.09),
      ],
    ),
    Food(
      name: "classic cheeseBurger",
      description:
          "a juicy beef with melted cheese, tomato,lettuce, and a hint of onion pickle",
      imagePath: "lib/assets/image1.png",
      price: 0.99,
      category: foodCategory.burgers,
      availableAddon: [
        Addon(name: "extra cheese", price: 0.09),
        Addon(name: "Bacon", price: 2.09),
        Addon(name: "Avocado", price: 3.09),
      ],
    ),
    Food(
      name: "classic cheeseBurger",
      description:
          "a juicy beef with melted cheese, tomato,lettuce, and a hint of onion pickle",
      imagePath: "lib/assets/image1.png",
      price: 0.99,
      category: foodCategory.burgers,
      availableAddon: [
        Addon(name: "extra cheese", price: 0.09),
        Addon(name: "Bacon", price: 2.09),
        Addon(name: "Avocado", price: 3.09),
      ],
    ),
  ];

  List<Food> get menu => _menu;
}
