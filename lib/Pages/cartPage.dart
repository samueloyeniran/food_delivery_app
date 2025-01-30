import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart

        final userCart = restaurant.cart;
        print("$userCart show cart item");
        // scaffold ui

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
                      // get individual cart item
                      final cartItem = userCart[index];
                      return Text(cartItem.food.imagePath);

                      // return ListTile(
                      //   title: Text(cartItem.food.name),
                      // );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
