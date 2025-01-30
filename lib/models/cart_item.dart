// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivery_app/models/food.dart';

class CartItem {
  Food food;
  List<Addon> seletedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.seletedAddons,
    this.quantity = 1,
  });

  double get totalPrice {
    double addonsprice =
        seletedAddons.fold(0, (sum, element) => sum + element.price);
    return (food.price + addonsprice);
  }
}
