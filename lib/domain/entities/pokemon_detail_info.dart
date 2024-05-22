import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_info.freezed.dart';
part 'pokemon_detail_info.g.dart';

@freezed
class PokemonDetailInfo with _$PokemonDetailInfo {
  factory PokemonDetailInfo({
    required int id,
    required String name,
    required double heightInMeter,
    required double weightInKg,
    required double? malePercentage,
    required double? femalePercentage,
    required double capturePercentage,
    required int? baseFriendship,
    required bool isBaby,
    required int? hatchCounter,
    required String description,
    required String growthRate,
    required List<String> eggGroups,
  }) = _PokemonDetailInfo;

  factory PokemonDetailInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailInfoFromJson(json);
}
