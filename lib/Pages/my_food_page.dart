import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyFoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  MyFoodPage({
    super.key,
    required this.food,
  }) {
    // initialized the selected addon to be false

    for (Addon addon in food.availableAddon) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<MyFoodPage> createState() => _MyFoodPageState();
}

class _MyFoodPageState extends State<MyFoodPage> {
  // mehtod to add to cart

  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // close the cart page to go to the food page

    Navigator.pop(context);

    // format the selected the addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddon) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    // add to cart
    context.read<Restaurant>().addToCart(
          food,
          currentlySelectedAddons,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // food image
                  Image.asset(
                    widget.food.imagePath,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  food name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // food price
                      Text(
                        "\$${widget.food.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // food description
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      SizedBox(
                        height: 10,
                      ),
                      // addons
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Add-ons",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddon.length,
                        itemBuilder: (context, index) {
                          Addon addon = widget.food.availableAddon[index];
                          SizedBox(width: 20);
                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text(
                              "\$${addon.price}",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyButton(
                    onTap: () {
                      addToCart(widget.food, widget.selectedAddons);
                      print("i am clicking this button");
                      print(widget.selectedAddons);
                    },
                    text: "Add To Cart",
                  ),
                ],
              ),
            ),
          ),
        ),
        // back button

        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_rounded),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
