import 'package:flutter/material.dart';
import 'package:pizza_layout/featured.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/today_specials.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // A Container egy általános tároló elem, amivel könnyen lehet méretezni,
    // színezni a tartalmát
    return Container(
      // A megjelenését a BoxDecoration írja le, amiben azt tudjuk megmondani,
      // hogyan rajzolja ki a Container dobozát
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      // A Column egy elrendezéshez használható widget. Az elemei egymás alá
      // kerülnek
      child: Column(
        children: [
          // Az Expanded widget kitölti a maradék rendelkezésre álló helyet.
          Expanded(
            child: TodaySpecials(),
          ),
        ],
      ),
    );
  }
}
