import 'package:flutter/material.dart';

import '../pizza.dart';

class Topping extends StatelessWidget {
  const Topping({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Text(
      pizza.topping,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }
}
