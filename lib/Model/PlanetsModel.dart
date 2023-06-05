class PlanetsModel {
  late String name;
  String? description;
  late String image;
  String? diameter;
  String? weight;
  String? distanceSun;
  String? gravity;
  String? rotation;
  String? translation;
  String? temperature;
  List<dynamic>? satellite;
  String? curiosity;

  PlanetsModel({
    required this.name,
    this.description,
    required this.image,
    this.diameter,
    this.weight,
    this.distanceSun,
    this.gravity,
    this.rotation,
    this.translation,
    this.temperature,
    this.satellite,
    this.curiosity,
  });

  PlanetsModel.fromJson(Map<String, dynamic> json )
  {
    name = json['name'];
    description = json['description'];
    image = json['image'];
    diameter = json['diameter'];
    weight = json['weight'];
    distanceSun = json['distanceSun'];
    gravity = json['gravity'];
    rotation = json['rotation'];
    translation = json['translation'];
    temperature = json['temperature'];
    satellite = json['satellite'];
    curiosity = json['curiosity'];
  }
}
