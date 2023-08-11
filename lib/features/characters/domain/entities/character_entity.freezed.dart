// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) {
  return _CharacterEntity.fromJson(json);
}

/// @nodoc
mixin _$CharacterEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  LocationEntity get location => throw _privateConstructorUsedError;
  List<String> get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterEntityCopyWith<CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEntityCopyWith<$Res> {
  factory $CharacterEntityCopyWith(
          CharacterEntity value, $Res Function(CharacterEntity) then) =
      _$CharacterEntityCopyWithImpl<$Res, CharacterEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image,
      LocationEntity location,
      List<String> episode});

  $LocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class _$CharacterEntityCopyWithImpl<$Res, $Val extends CharacterEntity>
    implements $CharacterEntityCopyWith<$Res> {
  _$CharacterEntityCopyWithImpl(this._value, this._then);

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
    Object? location = null,
    Object? episode = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterEntityCopyWith<$Res>
    implements $CharacterEntityCopyWith<$Res> {
  factory _$$_CharacterEntityCopyWith(
          _$_CharacterEntity value, $Res Function(_$_CharacterEntity) then) =
      __$$_CharacterEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image,
      LocationEntity location,
      List<String> episode});

  @override
  $LocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class __$$_CharacterEntityCopyWithImpl<$Res>
    extends _$CharacterEntityCopyWithImpl<$Res, _$_CharacterEntity>
    implements _$$_CharacterEntityCopyWith<$Res> {
  __$$_CharacterEntityCopyWithImpl(
      _$_CharacterEntity _value, $Res Function(_$_CharacterEntity) _then)
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
    Object? location = null,
    Object? episode = null,
  }) {
    return _then(_$_CharacterEntity(
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterEntity implements _CharacterEntity {
  const _$_CharacterEntity(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image,
      required this.location,
      required final List<String> episode})
      : _episode = episode;

  factory _$_CharacterEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterEntityFromJson(json);

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
  final LocationEntity location;
  final List<String> _episode;
  @override
  List<String> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  String toString() {
    return 'CharacterEntity(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image, location: $location, episode: $episode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._episode, _episode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, species,
      gender, image, location, const DeepCollectionEquality().hash(_episode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterEntityCopyWith<_$_CharacterEntity> get copyWith =>
      __$$_CharacterEntityCopyWithImpl<_$_CharacterEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterEntityToJson(
      this,
    );
  }
}

abstract class _CharacterEntity implements CharacterEntity {
  const factory _CharacterEntity(
      {required final int id,
      required final String name,
      required final String status,
      required final String species,
      required final String gender,
      required final String image,
      required final LocationEntity location,
      required final List<String> episode}) = _$_CharacterEntity;

  factory _CharacterEntity.fromJson(Map<String, dynamic> json) =
      _$_CharacterEntity.fromJson;

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
  LocationEntity get location;
  @override
  List<String> get episode;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterEntityCopyWith<_$_CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
