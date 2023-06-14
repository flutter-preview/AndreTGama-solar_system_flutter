import 'package:flutter/material.dart';
import 'package:solar_system_app/constants.dart';

class GeneralCharacteristics extends StatelessWidget {
  final String title, description;

  const GeneralCharacteristics(
    {
      required this.title,
      required this.description,
      super.key
    }
  );

  @override
  Widget build(BuildContext context) {

    return RichText(
      text: TextSpan(
        text: '',
        style: const TextStyle(fontSize: 20, fontFamily: 'Daruma'),
        children: <TextSpan>[
          TextSpan(
            text: "$title: ",
            style: const TextStyle(
              color: DescriptionPlanet
            )
          ),
          TextSpan(
            text: description,
            style: const TextStyle(
              color: NamePlanet
            )
          ),
        ],
      )
    );
  }
}
