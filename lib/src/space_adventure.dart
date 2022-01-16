import 'dart:io';

import 'package:main/dart_space_adventure.dart';
import 'planetary_system.dart';

class SpaceAdventure {
  PlanetarySystem planetarySystem;
  SpaceAdventure({required this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt("What is your name?"));
    print('Let\'s go on an adventure \n');
    travel(promptForRandomOrSpecificDestiantion(
        'Shall I randomly choose a planet for you to visit? (YES or NO)'));
  }

  void printGreeting() {
    print('Welcome to the ${planetarySystem.name}');
    print('Welcome to the solar system!');
    print('There are 8 planets');
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync() ?? '';
  }

  void printIntroduction(String name) {
    print('Hello $name my name is Juno and I am your new pilot.\n');
  }

  void travelToRandomPlanet() {
    print('Okay we will travel to Earth.');
  }

  void travelTo(String planetName) {
    print('You will visit $planetName \n');
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomPlanet();
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit:'));
    }
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
