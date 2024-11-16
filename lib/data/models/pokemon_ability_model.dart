import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_model.freezed.dart';

@freezed
class PokemonAbilityModel with _$PokemonAbilityModel {
  const factory PokemonAbilityModel({
    required bool isHidden,
    required String name,
    required String description,
    required String generation,
  }) = _PokemonAbilityModel;
}
