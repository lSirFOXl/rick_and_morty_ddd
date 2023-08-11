// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterEntity _$$_CharacterEntityFromJson(Map<String, dynamic> json) =>
    _$_CharacterEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
      location:
          LocationEntity.fromJson(json['location'] as Map<String, dynamic>),
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CharacterEntityToJson(_$_CharacterEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
      'location': instance.location,
      'episode': instance.episode,
    };
