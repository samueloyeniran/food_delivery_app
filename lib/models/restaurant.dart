import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burger
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
      name: "Ultimate Beef Bliss",
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
      name: "Cheesy Crunch Burger",
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
      name: "Smoky Bacon Classic",
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
      name: "Loaded BBQ Stack",
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
    //salads
    Food(
      name: "Greek Garden Salad",
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
      name: "Tropical Fruit Medley",
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
      name: "Caesar's Classic Bowl",
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
      name: "Crunchy Veggie Delight",
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
      name: "Avocado Spinach Bliss",
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
    //sides
    Food(
      name: "Crispy Fries",
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
      name: "Garlic Parmesan Wings",
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
      name: "Sweet Potato Wedges",
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
      name: "Cheesy Nachos",
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
      name: "Spicy Onion Rings",
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
    //deserts
    Food(
      name: "Chocolate Lava Cake",
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
      name: "Vanilla Berry Sundae",
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
      name: "Caramel Fudge Brownie",
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
      name: "Strawberry Cheesecake",
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
      name: "Mint Choco Delight",
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
    //drinks
    Food(
      name: "Classic Lemonade",
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
      name: "Berry Blast Smoothie",
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
      name: "Mango Mint Cooler",
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
      name: "Iced Mocha Delight",
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
      name: "Tropical Punch",
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
  /*
  G E T T E R S 
*/

  List<Food> get menu => _menu;

  /*
  O P E R A T I O N S

  // add to cart 

  // remove from cart 

  // get the total number of item in the cart 

  // get the total price of item in the cart 

  // clear the cart

  */

  /*
   
 H E L P E R S 

 // generate a  receipt 

 // format double value to money

 // format list of addons into strings summary
  */
}
