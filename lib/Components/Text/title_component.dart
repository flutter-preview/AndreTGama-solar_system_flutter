import 'package:flutter/material.dart';
import 'package:solar_system_app/constants.dart';

class TitleComponent extends StatelessWidget {
  final String title;

  const TitleComponent(
      {required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 24,
              overflow: TextOverflow.ellipsis,
              fontFamily: 'Daruma',
              color: NameSystem,
              fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        ),
        const Divider(
          color: Colors.black38,
        ),
        const SizedBox(
          height: 15,
        ),
      ]
    );
  }
}
