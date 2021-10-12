import 'package:flutter/material.dart';

import '../pizza.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < pizza.rating; i++)
          Icon(
            Icons.star,
            size: 15,
            color: Colors.yellow[700],
          ),
        for (var i = 0; i < 5 - pizza.rating; i++)
          Icon(
            Icons.star_border,
            size: 15,
            color: Colors.yellow[700],
          ),
      ],
    );
  }
}
