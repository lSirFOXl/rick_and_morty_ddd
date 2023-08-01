// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_lite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterLiteEntity _$CharacterLiteEntityFromJson(Map<String, dynamic> json) {
  return _CharacterLiteEntity.fromJson(json);
}

/// @nodoc
mixin _$CharacterLiteEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterLiteEntityCopyWith<CharacterLiteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLiteEntityCopyWith<$Res> {
  factory $CharacterLiteEntityCopyWith(
          CharacterLiteEntity value, $Res Function(CharacterLiteEntity) then) =
      _$CharacterLiteEntityCopyWithImpl<$Res, CharacterLiteEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image});
}

/// @nodoc
class _$CharacterLiteEntityCopyWithImpl<$Res, $Val extends CharacterLiteEntity>
    implements $CharacterLiteEntityCopyWith<$Res> {
  _$CharacterLiteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterLiteEntityCopyWith<$Res>
    implements $CharacterLiteEntityCopyWith<$Res> {
  factory _$$_CharacterLiteEntityCopyWith(_$_CharacterLiteEntity value,
          $Res Function(_$_CharacterLiteEntity) then) =
      __$$_CharacterLiteEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image});
}

/// @nodoc
class __$$_CharacterLiteEntityCopyWithImpl<$Res>
    extends _$CharacterLiteEntityCopyWithImpl<$Res, _$_CharacterLiteEntity>
    implements _$$_CharacterLiteEntityCopyWith<$Res> {
  __$$_CharacterLiteEntityCopyWithImpl(_$_CharacterLiteEntity _value,
      $Res Function(_$_CharacterLiteEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
  }) {
    return _then(_$_CharacterLiteEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterLiteEntity implements _CharacterLiteEntity {
  const _$_CharacterLiteEntity(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image});

  factory _$_CharacterLiteEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterLiteEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String gender;
  @override
  final String image;

  @override
  String toString() {
    return 'CharacterLiteEntity(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterLiteEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, species, gender, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterLiteEntityCopyWith<_$_CharacterLiteEntity> get copyWith =>
      __$$_CharacterLiteEntityCopyWithImpl<_$_CharacterLiteEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterLiteEntityToJson(
      this,
    );
  }
}

abstract class _CharacterLiteEntity implements CharacterLiteEntity {
  const factory _CharacterLiteEntity(
      {required final int id,
      required final String name,
      required final String status,
      required final String species,
      required final String gender,
      required final String image}) = _$_CharacterLiteEntity;

  factory _CharacterLiteEntity.fromJson(Map<String, dynamic> json) =
      _$_CharacterLiteEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get gender;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterLiteEntityCopyWith<_$_CharacterLiteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
