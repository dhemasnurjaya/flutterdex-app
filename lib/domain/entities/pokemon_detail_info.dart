class PokemonDetailInfo {
  PokemonDetailInfo({
    required this.id,
    required this.name,
    required this.heightInMeter,
    required this.weightInKg,
    required this.malePercentage,
    required this.femalePercentage,
    required this.capturePercentage,
    required this.baseHappinessPercentage,
    required this.isBaby,
    required this.hatchCounter,
    required this.description,
    required this.growthRate,
    required this.eggGroups,
  });

  final int id;
  final String name;
  final double heightInMeter;
  final double weightInKg;
  final double? malePercentage;
  final double? femalePercentage;
  final double capturePercentage;
  final double baseHappinessPercentage;
  final bool isBaby;
  final int hatchCounter;
  final String description;
  final String growthRate;
  final List<String> eggGroups;
}
