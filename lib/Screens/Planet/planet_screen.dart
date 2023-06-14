import 'package:flutter/material.dart';
import 'package:solar_system_app/Components/Text/general_characteristics.dart';
import 'package:solar_system_app/Components/Text/title_component.dart';
import 'package:solar_system_app/Model/PlanetsModel.dart';
import 'package:solar_system_app/constants.dart';

class PlanetScreen extends StatelessWidget {
  final PlanetsModel planet;

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
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 32),
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 500,
                        ),
                        Text(
                          planet.name.toString(),
                          style: const TextStyle(
                              fontSize: 55,
                              fontFamily: 'Daruma',
                              color: NamePlanet,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          "Sistema Solar",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Daruma',
                              color: NameSystem,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left,
                        ),
                        const Divider(
                          color: Colors.black38,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: size.width * 0.95,
                          child: Text(
                            planet.description.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'Daruma',
                                color: DescriptionPlanet,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TitleComponent(title: 'Características gerais'),
                        GeneralCharacteristics(
                          title: 'Diâmetro',
                          description: planet.diameter.toString()
                        ),
                        GeneralCharacteristics(
                          title: 'Massa',
                          description: planet.weight.toString()
                        ),
                        GeneralCharacteristics(
                          title: 'Distância do Sol',
                          description: planet.distanceSun.toString()
                        ),
                        GeneralCharacteristics(
                          title: 'Gravidade',
                          description: planet.gravity.toString()
                        ),
                        GeneralCharacteristics(
                          title: 'Rotação',
                          description: planet.rotation.toString()
                        ),
                        GeneralCharacteristics(
                          title: 'Translação',
                          description: planet.translation.toString()
                        ),
                        GeneralCharacteristics(
                          title: 'Temperatura',
                          description: planet.temperature.toString()
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TitleComponent(title: 'Curiosidade'),
                        SizedBox(
                          width: size.width * 0.95,
                          child: Text(
                            planet.curiosity.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'Daruma',
                                color: DescriptionPlanet,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TitleComponent(title: 'Satélite(s)'),
                        Text(
                          planet.satellite.toString().replaceAll('[', '').replaceAll(']', ''),
                          style: const TextStyle(
                            color: DescriptionPlanet,
                            fontSize: 20,
                            fontFamily: 'Daruma'
                          )
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TitleComponent(title: 'Galeria'),
                        const SizedBox(
                          height: 30,
                        ),
                      ])),
            ),
            const Positioned(
                top: 5,
                left: 0,
                child: Text('1',
                    style: TextStyle(
                        fontSize: 300,
                        color: Color.fromARGB(255, 223, 223, 223)))),
            Positioned(top: -30, right: -50, child: Image.asset(planet.image)),
          ]),
        ),
      ),
    );
  }
}
