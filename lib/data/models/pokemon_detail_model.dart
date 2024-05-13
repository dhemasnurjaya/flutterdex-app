class PokemonDetailModel {
  PokemonDetailModel({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.genderRate,
    required this.captureRate,
    required this.baseHappiness,
    required this.isBaby,
    required this.hatchCounter,
    required this.description,
  });
  final int id;
  final String name;
  final int height;
  final int weight;
  final int genderRate;
  final int captureRate;
  final int baseHappiness;
  final bool isBaby;
  final int hatchCounter;
  final String description;
}
