import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza_layout.dart';

main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PizzaLayout(),
    );
  }
}
