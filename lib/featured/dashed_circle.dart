import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DashedCircle extends StatelessWidget {
  final double diameter;

  const DashedCircle({
    Key? key,
    required this.diameter,
  }) : super(key: key);

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
