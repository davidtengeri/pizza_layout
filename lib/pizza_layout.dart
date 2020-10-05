import 'package:flutter/material.dart';
import 'package:pizza_layout/home_page.dart';

class PizzaLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A SafeArea widget abban segít, hogy a tartalmunkat ne takartja ki a
      // notch, vagy a telefon állapotsávja
      body: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
