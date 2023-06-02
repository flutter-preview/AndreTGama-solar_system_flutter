import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:solar_system_app/constants.dart';

class ButtonRounded extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const ButtonRounded(
      {Key? key,
      required this.text,
      required this.press,
      this.color = SkyColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      backgroundColor: color,
    );

    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250)),
            boxShadow: [
              BoxShadow(
                color: Color(0x54000000),
                spreadRadius: 4,
                blurRadius: 20,
              ),
            ],
          ),
          width: size.width * 0.45,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: TextButton(
              style: raisedButtonStyle,
              onPressed: press,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('lottie/spaceship.json', height: 24),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    text,
                    style: TextStyle(color: textColor, fontSize: 14),
                  ),
                ],
              )
            )
          ),
        ),
      ]
    );
  }
}
