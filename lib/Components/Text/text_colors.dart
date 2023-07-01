import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solar_system_app/constants.dart';

class TextColors extends StatelessWidget {
  final String text;

  const TextColors({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    var colors = [
      Pink,
      Blue,
      LBlue,
      LGreen,
      Green,
      Yellow,
      Orange,
      Red,
      Black,
      Grey,
      Brown,
    ];
    var textSpanList = text.split("").map((word) {
      return TextSpan(
          text: word,
          style:
              TextStyle(color: colors[random.nextInt(10)], fontSize: 26, fontFamily: 'Daruma'));
    }).toList();

    return RichText(
        text: TextSpan(
      text: '',
      children: textSpanList,
    ));
  }
}
