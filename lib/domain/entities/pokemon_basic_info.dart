import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_basic_info.freezed.dart';
part 'pokemon_basic_info.g.dart';

@freezed
class PokemonBasicInfo with _$PokemonBasicInfo {
  factory PokemonBasicInfo({
    required int id,
    required String name,
    required String genus,
    required List<String> types,
  }) = _PokemonBasicInfo;

  factory PokemonBasicInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonBasicInfoFromJson(json);
}
