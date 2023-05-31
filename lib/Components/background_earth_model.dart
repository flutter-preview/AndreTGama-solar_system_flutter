import 'package:flutter/material.dart';

class BackgroundEarthModel extends StatelessWidget {
  final Widget child;
  const BackgroundEarthModel({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'bottom.png',
              width: 300,
            )
          ),
          child
        ],
      ),
    );
  }
}
