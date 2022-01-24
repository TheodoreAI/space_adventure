import 'dart:math';
import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<Planet> planets;
  final Random _random = Random();
  // Getters
  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;

  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  }

  Planet planetWithName(String name) {
    return planets.firstWhere((planet) => planet.name == name,
        orElse: () => Planet.nullPlanet());
  }

  // Constructor: named parameters
  PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});
}

var ps = PlanetarySystem();
var dagobah = PlanetarySystem(name: "Dagobah System");

// import 'planet.dart';

// class PlanetarySystem {
//   String name = '';
//   List<Planet> planets;
//   // Getters
//   int get numberOfPlanets => planets.length;
//   // Constructor
//   // PlanetarySystem() {
//   //   this.name = 'Unnamed System';
//   // }

//   // OR

//   // Initialization List
//   // PlanetarySystem() : name = 'Unnamed System';

//   // Named constructor
//   // PlanetarySystem.withName(String name) {
//   //   this.name = name;
//   // }

//   // OR

//   // Initializing formal
//   // PlanetarySystem.withName(this.name);

//   // Optional Parameters with [] brackets
//   // PlanetarySystem([this.name = 'Unnamed System']);

//   // Named parameters with {} braces
//   PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});
//   // access with name: "value"
// }

// var ps = PlanetarySystem();
// var dagobah = PlanetarySystem(name: "Dagobah System");
