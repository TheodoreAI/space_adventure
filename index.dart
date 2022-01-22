// Exploration 2.4.5: Constructors, Initialization Lists, and Named
//                    Optional Parameters
// Test your understanding of the exploration topic, by refactoring the program.
// Replace the verbose constructors with a single constructor statement that
// provides the same instantiation features and performs the same work as
// the existing implementation.
// Hint: Combine init lists, initializing formals, and named optional parameters.

void main() {
  final boringSpaceship = Spaceship();
  final excitingSpaceship = Spaceship.withDetails("Serenity", "Firefly", 5);
  boringSpaceship.battle(excitingSpaceship);
}

class Spaceship {
  String name = '';
  String klass = '';
  int? numberOfCabins;
  String names = '';

  // Initialization lists with multiple instance variables
  // Spaceship()
  //     : name = 'No name',
  //       klass = 'Unspecified',
  //       numberOfCabins = 1;
  // // Initialization formal with multiple instance variables
  // Spaceship.withDetails(this.name, this.klass, this.numberOfCabins);

  // void battle(Spaceship other) {
  //   print('pew! pew!');
  // }

  Spaceship(this.names);
}
