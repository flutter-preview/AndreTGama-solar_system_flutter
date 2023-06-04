import 'dart:convert';
import 'package:flutter/material.dart';
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
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<PlanetsModel>;
          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(items[index].image.toString()),
                    )
                  ],
                ),
              ),
            );
          });
        } else {
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
