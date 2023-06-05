import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:solar_system_app/Components/Cards/card_comoponet.dart';
import 'package:solar_system_app/Components/background_main.dart';
import 'package:solar_system_app/Model/PlanetsModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class SolarSystemScreen extends StatelessWidget {
  const SolarSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          print('if');
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<PlanetsModel>;
          print('else if');
          return BackgroundMain(
            child: ListView.builder(itemBuilder: (context, index) {
              return CardComoponet(
                text: items[index].name.toString(),
                image: "assets/images/sistema-solar/venus.png",
              );
            }),
          );
        } else {
          print('else');
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<PlanetsModel>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/data/planets.json');
    final list = json.decode(jsonData) as List<dynamic>;

    return list.map((e) => PlanetsModel.fromJson(e)).toList();
  }
}
