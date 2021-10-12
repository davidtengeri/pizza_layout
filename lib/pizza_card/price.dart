import 'package:flutter/material.dart';

import '../pizza.dart';

class Price extends StatelessWidget {
  const Price({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${pizza.price}',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
