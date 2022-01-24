import 'dart:io';

import 'package:main/dart_space_adventure.dart';
import 'dart:convert' show jsonDecode;

Future<void> main(List<String> arguments) async {
  var planetarySystem =
      jsonDecode(await File('planetarySystem.json').readAsString());
  var planets = planetarySystem['planets'];
  var systemName = planetarySystem['name'];
  final Map<String, String> planetsObj = {};
  planets.forEach((p) => planetsObj[p['name']] = p['description']);

  List<Planet> mockPlanets() {
    return planetsObj.entries
        .map((e) => Planet(name: e.key, description: e.value))
        .toList();
  }

  SpaceAdventure(
          planetarySystem:
              PlanetarySystem(name: systemName, planets: mockPlanets()))
      .start();
}
