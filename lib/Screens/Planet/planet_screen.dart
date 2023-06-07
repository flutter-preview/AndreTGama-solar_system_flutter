import 'package:flutter/material.dart';

class PlanetScreen extends StatelessWidget {
  final Object planet;

  const PlanetScreen({required this.planet, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var image;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                child: Image.asset("assets/images/sistema-solar/marcury.png",
                  height: 300,
                  width: 300,
                  filterQuality: FilterQuality.none
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}
