import 'package:main/dart_space_adventure.dart';

void main(List<String> arguments) {
  List<Planet> mockPlanets() {
    return [
      Planet(name: 'Mercury', description: ' Closes to the Sun, very hot.'),
      Planet(name: 'Venus', description: 'It\'s very cloudy here'),
      Planet(name: 'Earth', description: 'The gettho of the Solar System'),
      Planet(name: 'Mars', description: 'The Red planet'),
      Planet(name: 'Jupiter', description: 'The gas giant'),
      Planet(name: 'Saturn', description: 'This one has several marriages'),
      Planet(name: 'Uranus', description: 'Rotates weird'),
      Planet(name: 'Neptune', description: 'Cold as hell here'),
      Planet(name: 'Pluto', description: 'He is a planet')
    ];
  }

  SpaceAdventure(
          planetarySystem:
              PlanetarySystem(name: "Solar System", planets: mockPlanets()))
      .start();
}
