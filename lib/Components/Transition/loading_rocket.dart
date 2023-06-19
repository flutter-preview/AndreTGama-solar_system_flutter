import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:solar_system_app/constants.dart';

class LoadingRocket extends StatelessWidget {
  bool selected = false;

  LoadingRocket({
    this.selected = false,
    super.key  
  });
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [SpaceColor, SkyColor],
          )),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(top: 0, child: Lottie.asset('lottie/space.json')),
              AnimatedAlign(
                alignment: Alignment.bottomCenter,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: SizedBox(
                  height: 250,
                  child: Lottie.asset('lottie/rocket.json'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
