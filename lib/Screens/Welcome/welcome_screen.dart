import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:solar_system_app/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [SpaceColor, SkyColor],
          )),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: size.height * 0.2,
                child: SizedBox(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: size.height * 0.5,
                        width: size.width * 0.7,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color.fromARGB(255, 245, 243, 255), Color.fromARGB(255, 236, 236, 255)],
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 57, 21, 90)
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(4, 8),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 50),
                            RichText(
                              text: const TextSpan(
                                text: '',
                                style: TextStyle(fontSize: 18, fontFamily: 'Daruma'), 
                                children: <TextSpan>[
                                  TextSpan(text: 'V', style: TextStyle(color: Pink)),
                                  TextSpan(text: 'e', style: TextStyle(color: Blue)),
                                  TextSpan(text: 'n', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'h', style: TextStyle(color: LGreen)),
                                  TextSpan(text: 'a', style: TextStyle(color: Yellow)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'c', style: TextStyle(color: Red)),
                                  TextSpan(text: 'o', style: TextStyle(color: Black)),
                                  TextSpan(text: 'n', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'h', style: TextStyle(color: Pink)),
                                  TextSpan(text: 'e', style: TextStyle(color: Orange)),
                                  TextSpan(text: 'c', style: TextStyle(color: Pink)),
                                  TextSpan(text: 'e', style: TextStyle(color: Blue)),
                                  TextSpan(text: 'r', style: TextStyle(color: Brown)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'o', style: TextStyle(color: Blue)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'e', style: TextStyle(color: LGreen)),
                                  TextSpan(text: 's', style: TextStyle(color: Yellow)),
                                  TextSpan(text: 'p', style: TextStyle(color: Red)),
                                  TextSpan(text: 'a', style: TextStyle(color: Black)),
                                  TextSpan(text: 'ç', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'o', style: TextStyle(color: Pink)),
                                  TextSpan(text: '!', style: TextStyle(color: Orange)),
                                ],
                              )
                            ),
                            const SizedBox(height: 25),
                            RichText(
                              text: const TextSpan(
                                text: '',
                                style: TextStyle(fontSize: 18, fontFamily: 'Daruma'), 
                                children: <TextSpan>[
                                  TextSpan(text: 'P', style: TextStyle(color: Pink)),
                                  TextSpan(text: 'r', style: TextStyle(color: Blue)),
                                  TextSpan(text: 'e', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 's', style: TextStyle(color: LGreen)),
                                  TextSpan(text: 's', style: TextStyle(color: Yellow)),
                                  TextSpan(text: 'i', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'o', style: TextStyle(color: Black)),
                                  TextSpan(text: 'n', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'e', style: TextStyle(color: Orange)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'o', style: TextStyle(color: Blue)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'p', style: TextStyle(color: LGreen)),
                                  TextSpan(text: 'a', style: TextStyle(color: Yellow)),
                                  TextSpan(text: 'r', style: TextStyle(color: Red)),
                                  TextSpan(text: 'a', style: TextStyle(color: Black)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'c', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'o', style: TextStyle(color: Pink)),
                                  TextSpan(text: 'm', style: TextStyle(color: Orange)),
                                  TextSpan(text: 'e', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'ç', style: TextStyle(color: Pink)),
                                  TextSpan(text: 'a', style: TextStyle(color: Orange)),
                                  TextSpan(text: 'r', style: TextStyle(color: Black)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'a', style: TextStyle(color: Red)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'n', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'o', style: TextStyle(color: Pink)),
                                  TextSpan(text: 's', style: TextStyle(color: Orange)),
                                  TextSpan(text: 's', style: TextStyle(color: Black)),
                                  TextSpan(text: 'a', style: TextStyle(color: Pink)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'v', style: TextStyle(color: LGreen)),
                                  TextSpan(text: 'i', style: TextStyle(color: Yellow)),
                                  TextSpan(text: 'a', style: TextStyle(color: Red)),
                                  TextSpan(text: 'g', style: TextStyle(color: Black)),
                                  TextSpan(text: 'e', style: TextStyle(color: LBlue)),
                                  TextSpan(text: 'm', style: TextStyle(color: Pink)),
                                  TextSpan(text: '!', style: TextStyle(color: Orange)),
                                ],
                              )
                            ),
                          ],
                        )),
                  ],
                )),
              ),
              Positioned(
                top: size.height * 0.05,
                child: SizedBox(
                    height: 200,
                    child: SimpleShadow(
                      child: Lottie.asset('lottie/soldier-on-rocket.json'),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
