class PokemonSpecies {
  final int id;
  final String name;
  final String description;
  final int? genderRate;
  final int? captureRate;
  final int? baseHappiness;

  PokemonSpecies({
    required this.id,
    required this.name,
    required this.description,
    required this.genderRate,
    required this.captureRate,
    required this.baseHappiness,
  });

  bool get isGenderless => genderRate == -1;
  double? get femalePercentage =>
      isGenderless ? null : (genderRate! / 8.0) * 100;
  double? get malePercentage => isGenderless ? null : 100 - femalePercentage!;
  double get capturePercentage => (captureRate! / 255.0) * 100;
  double get baseHappinessPercentage => (baseHappiness! / 255.0) * 100;
}
