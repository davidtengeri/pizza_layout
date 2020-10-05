import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:pizza_layout/pizza.dart';

import 'pizza_card.dart';

class Featured extends StatelessWidget {
  final Pizza pizza;

  const Featured({Key key, this.pizza}) : super(key: key);
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

class DashedCircle extends StatelessWidget {
  final double diameter;

  const DashedCircle({Key key, this.diameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: (250 - diameter) / 2,
        left: (250 - diameter) / 2,
      ),
      // A DottedBorder nem a Flutter-ben szereplő widget, hanem a pub.dev-en
      // egy harmadik féltől származó fejlesztés, amit a pubscpec.yml-ben meg
      // tudunk adni, mint függőség.
      // https://pub.dev/packages/dotted_border
      child: DottedBorder(
        borderType: BorderType.Circle,
        color: Colors.white,
        strokeWidth: 1,
        dashPattern: [6, 8],
        child: Container(
          width: diameter,
          height: diameter,
        ),
      ),
    );
  }
}

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
            color: Colors.red[900].withOpacity(0.6),
            spreadRadius: 2,
            offset: Offset(7, 7),
            blurRadius: 20,
          )
        ],
      ),
    );
  }
}
