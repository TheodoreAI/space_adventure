import 'dart:io';

import 'package:main/dart_space_adventure.dart';

class SpaceAdventure {
  final PlanetarySystem planetarySystem;
  SpaceAdventure({required this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt("What is your name?"));
    print('Let\'s go on an adventure!');
    if (planetarySystem.hasPlanets) {
      travel(promptForRandomOrSpecificDestiantion(
          'Shall I randomly choose a planet for you to visit? (YES or NO)'));
    } else {
      print('Aw, there are no Planets to explore.');
    }
  }

  void printGreeting() {
    print('Welcome to the ${planetarySystem.name}');
    print('There are ${planetarySystem.numberOfPlanets} planets');
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync() ?? '';
  }

  void printIntroduction(String name) {
    print('Hello $name my name is Juno and I am your new pilot.');
  }

  void travelTo(Planet planet) {
    print('Traveling to ${planet.name}');
    print('Arrived at ${planet.name}. ${planet.description}.');
  }

  void travel(bool randomDestination) {
    Planet planet;
    if (randomDestination) {
      planet = planetarySystem.randomPlanet();
    } else {
      planet = planetarySystem.planetWithName(
          responseToPrompt('Name the planet you would like to visit:'));
    }
    travelTo(planet);
  }

  bool promptForRandomOrSpecificDestiantion(String prompt) {
    String? answer;
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry I didn\'t get that.');
      }
    }
    return false;
  }
}
