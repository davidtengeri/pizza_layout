import 'package:flutter/material.dart';
import 'package:pizza_layout/featured/red_box.dart';

import 'pizza.dart';
import 'featured/dashed_circle.dart';
import 'pizza_card.dart';

class Featured extends StatelessWidget {
  final Pizza pizza;

  const Featured({
    Key? key,
    required this.pizza,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // A Stack a tartalmát a saját széleihez viszonyítva helyezi el.
      // Azt jelenti, hogy a gyerek widget-eket lehet egymás felé helyezni
      // megfelelő pozícionálással, így azok kitakarhatják egymást.
      child: Stack(
        children: [
          // A Positioned widget csak Stack-en belül lehet, azon belüli pozíciót
          // lehet megadni. Jelen esetben a Positioned.fill ki fogja tölteni
          // a rendelkezésre áll helyet, amit megadunk top, left, right, bottom
          // értéknek, az tekinthető padding-nak is.
          Positioned.fill(
            // A MediaQuery segítségével lehet elérni az aktuális eszköz
            // paramétereit, mint például a képenyő szélességét
            left: MediaQuery.of(context).size.width / 2 + 30,
            child: RedBox(),
          ),
          Positioned(
            top: 20,
            right: MediaQuery.of(context).size.width / 2 - 190,
            child: Container(
              child: Stack(
                children: [
                  // A ... az úgynevezett spread operator. Az utána következő
                  // lista elemeit sorolja fel, mintha azokat egyesével adtuk
                  // volna meg. Jelen esetben 3 db DashedCircle widget-et.
                  ...[250.0, 220.0, 190.0].map(
                    (diameter) => DashedCircle(
                      diameter: diameter,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 50,
            left: 30,
            right: MediaQuery.of(context).size.width / 2 - 60,
            bottom: 50,
            child: PizzaCard(
              pizza: pizza,
            ),
          ),
          Positioned(
            top: 70,
            bottom: 70,
            right: MediaQuery.of(context).size.width / 2 - 120,
            child: Container(
              width: 120,
              height: 120,
              // Kép beillesztése az asset-ekből. Az, hogy milyen asset-ek
              // érhetőek el, a pubspec.yml fájlban mindig definiálni kell.
              child: Image.asset(
                pizza.imagePath,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
