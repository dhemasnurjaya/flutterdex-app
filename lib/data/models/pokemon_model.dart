import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

/// Contains basic data about a Pokemon, used for Pokemon list
@freezed
class PokemonModel with _$PokemonModel {
  factory PokemonModel({
    required int id,
    required String name,
    required String type,
    required String genus,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
