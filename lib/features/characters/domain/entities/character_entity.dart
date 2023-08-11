import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/location_entity.dart';

part 'character_entity.freezed.dart';
part 'character_entity.g.dart';

@freezed
class CharacterEntity with _$CharacterEntity {
  const factory CharacterEntity({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
    required LocationEntity location,
    required List<String> episode,
  }) = _CharacterEntity;

  factory CharacterEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterEntityFromJson(json);
}
