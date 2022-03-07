import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/pizza_card.dart';

class TodaySpecials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Today Special',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: PIZZAS.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 230,
                  child: Stack(
                    children: [
                      PizzaCard(
                        pizza: PIZZAS[index],
                      ),
                      Image.asset(
                        PIZZAS[index].imagePath,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
