import 'package:flutter/material.dart';

import '../pizza.dart';

class PizzaName extends StatelessWidget {
  const PizzaName({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Text(
      pizza.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
