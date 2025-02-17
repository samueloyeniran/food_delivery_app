import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, value, child) {
        return Container(
          child: Column(
            children: [
              Row(
                children: [
                  // food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  // name and price
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food namme
                      Text(cartItem.food.name),
                      // food price
                      Text("\$" + cartItem.food.price.toString()),
                    ],
                  ),
                  MyQuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onIncrement: () {
                        value.addToCart(cartItem.food, cartItem.seletedAddons);
                      },
                      onDecrement: () {
                        value.removeFromCart(cartItem);
                      })
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
