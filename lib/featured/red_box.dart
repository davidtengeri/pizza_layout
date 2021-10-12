import 'package:flutter/material.dart';

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: -5,
            offset: Offset(-5, -5),
            blurRadius: 30,
          ),
          BoxShadow(
            color: Colors.red[900]!.withOpacity(0.6),
            spreadRadius: 2,
            offset: Offset(7, 7),
            blurRadius: 20,
          )
        ],
      ),
    );
  }
}
