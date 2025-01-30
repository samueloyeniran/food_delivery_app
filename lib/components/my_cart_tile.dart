import 'package:flutter/material.dart';
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
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      cartItem.food.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // name and price
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
