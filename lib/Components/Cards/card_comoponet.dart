import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:solar_system_app/constants.dart';

class CardComoponet extends StatelessWidget {
  final String text;
  final String image;
  final Color color, textColor;

  const CardComoponet(
      {required this.text,
      required this.image,
      this.color = SkyColor,
      this.textColor = Colors.white,
      super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: size.height * 0.5,
          width: size.width * 0.7,
          margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 245, 243, 255),
                Color.fromARGB(255, 236, 236, 255)
              ],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 57, 21, 90).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: const Text('text'),
        ),
        Positioned(top: 0, child: Image.asset(image)),
      ],
    );
  }
}
