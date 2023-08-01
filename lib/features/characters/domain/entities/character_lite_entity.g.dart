// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_lite_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterLiteEntity _$$_CharacterLiteEntityFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterLiteEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_CharacterLiteEntityToJson(
        _$_CharacterLiteEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
    };
