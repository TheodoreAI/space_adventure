// class
class PlanetarySystem {
  String name = '';

  // Constructor
  // PlanetarySystem() {
  //   this.name = 'Unnamed System';
  // }

  // OR

  // Initialization List
  // PlanetarySystem() : name = 'Unnamed System';

  // Named constructor
  // PlanetarySystem.withName(String name) {
  //   this.name = name;
  // }

  // OR

  // Initializing formal
  // PlanetarySystem.withName(this.name);

  // Optional Parameters with [] brackets
  // PlanetarySystem([this.name = 'Unnamed System']);

  // Named parameters with {} braces
  PlanetarySystem({this.name = 'Unnamed System'});
  // access with name: "value"
}

var ps = PlanetarySystem();
var dagobah = PlanetarySystem(name: "Dagobah System");
