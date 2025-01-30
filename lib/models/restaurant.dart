import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burger
    Food(
      name: "classic cheeseBurger",
      description:
          "a juicy beef with melted cheese, tomato,lettuce, and a hint of onion pickle",
      imagePath: "assets/images/burger1.png",
      price: 0.99,
      category: foodCategory.Burgers,
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
      imagePath: "assets/images/burger2.png",
      price: 0.99,
      category: foodCategory.Burgers,
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
      imagePath: "assets/images/burger3.png",
      price: 0.99,
      category: foodCategory.Burgers,
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
      imagePath: "assets/images/burger4.png",
      price: 0.99,
      category: foodCategory.Burgers,
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
      imagePath: "assets/images/burger5.png",
      price: 0.99,
      category: foodCategory.Burgers,
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
      imagePath: "assets/images/salad1.png",
      price: 0.99,
      category: foodCategory.Salads,
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
      imagePath: "assets/images/salad2.png",
      price: 0.99,
      category: foodCategory.Salads,
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
      imagePath: "assets/images/salad3.png",
      price: 0.99,
      category: foodCategory.Salads,
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
      imagePath: "assets/images/salad4.png",
      price: 0.99,
      category: foodCategory.Salads,
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
      imagePath: "assets/images/salad4.png",
      price: 0.99,
      category: foodCategory.Salads,
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
      imagePath: "assets/images/side1.png",
      price: 0.99,
      category: foodCategory.Sides,
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
      imagePath: "assets/images/side2.png",
      price: 0.99,
      category: foodCategory.Sides,
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
      imagePath: "assets/images/side3.png",
      price: 0.99,
      category: foodCategory.Sides,
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
      imagePath: "assets/images/side4.png",
      price: 0.99,
      category: foodCategory.Sides,
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
      imagePath: "assets/images/side5.png",
      price: 0.99,
      category: foodCategory.Sides,
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
      imagePath: "assets/images/burger1.png",
      price: 0.99,
      category: foodCategory.Desert,
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
      imagePath: "assets/images/burger1.png",
      price: 0.99,
      category: foodCategory.Desert,
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
      imagePath: "assets/images/burger1.png",
      price: 0.99,
      category: foodCategory.Desert,
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
      imagePath: "assets/images/burger1.png",
      price: 0.99,
      category: foodCategory.Desert,
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
      imagePath: "assets/images/burger1.png",
      price: 0.99,
      category: foodCategory.Desert,
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
      imagePath: "assets/images/drink1.png",
      price: 0.99,
      category: foodCategory.Drinks,
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
      imagePath: "assets/images/drink2.png",
      price: 0.99,
      category: foodCategory.Drinks,
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
      imagePath: "assets/images/drink3.png",
      price: 0.99,
      category: foodCategory.Drinks,
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
      imagePath: "assets/images/drink4.png",
      price: 0.99,
      category: foodCategory.Drinks,
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
      imagePath: "assets/images/drink5.png",
      price: 0.99,
      category: foodCategory.Drinks,
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
  List<CartItem> get cart => _cart;

  //O P E R A T I O N S

  // USER CART

  List<CartItem> _cart = [];
  // add to cart
  void addToCart(
    Food food,
    List<Addon> selectedAddons,
  ) {
    // to see if there is a food item already with same food and selected addon
    print(food);
    print(selectedAddons);

    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food item are the same
      bool isSameFood = item.food == food;
// check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.seletedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if item already exists, increase it's quantity
    print(_cart);
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart

    else {
      print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
      _cart.add(
        CartItem(
          food: food,
          seletedAddons: selectedAddons,
        ),
      );
      print('??????????????????????????????????????????');
      print(_cart);
      print("//////////////////////////////////////////////");
    }
    print(_cart);
    print(cart);
    notifyListeners();
  }

  // remove from cart
  void removeFronCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get the total number of item in the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.seletedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get the total price of item in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
   
 H E L P E R S 

 // generate a  receipt 

 // format double value to money

 // format list of addons into strings summary
  */
}
