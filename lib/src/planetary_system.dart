import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<Planet> planets;
  // Getters
  int get numberOfPlanets => planets.length;
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
