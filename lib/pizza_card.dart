import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza_card/pizza_name.dart';
import 'package:pizza_layout/pizza_card/price.dart';
import 'package:pizza_layout/pizza_card/rating.dart';

import 'pizza.dart';
import 'pizza_card/add_to_cart_button.dart';
import 'pizza_card/topping.dart';

class PizzaCard extends StatelessWidget {
  final Pizza pizza;
  final EdgeInsetsGeometry? padding;

  const PizzaCard({
    Key? key,
    required this.pizza,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: -5,
            offset: Offset(-5, -5),
            blurRadius: 30,
          ),
          BoxShadow(
            color: Colors.grey[900]!.withOpacity(0.3),
            spreadRadius: 2,
            offset: Offset(7, 7),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PizzaName(pizza: pizza),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        Price(pizza: pizza),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Rating(pizza: pizza),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Topping(pizza: pizza),
                  ),
                ],
              ),
            ),
          ),
          AddToCartButton(),
        ],
      ),
    );
  }
}
