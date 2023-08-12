import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_ddd/configs/providers.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/characters_data_source_interface.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/info_entity.dart';
import 'package:rick_and_morty_ddd/features/common/domain/failures/failure.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_PERSONS_LIST = "CACHED_PERSONS_LIST";

///
class CharactersLocalDataSource implements CharactersDataSourceInterface {
  final SharedPreferences sharedPreferences;

  CharactersLocalDataSource({required this.sharedPreferences});

  @override
  Future<Either<Failure, CharactersListEntity>> getCharacters(
      {required int page, required String name}) async {
    final jsonPersonsList =
        sharedPreferences.getStringList(CACHED_PERSONS_LIST);
    if (jsonPersonsList!.isNotEmpty) {
      print('Get Persons from Cache: ${jsonPersonsList.length}');

      var listValue = jsonPersonsList
          .map((person) => CharacterLiteEntity.fromJson(json.decode(person)))
          .toList();

      var infoEntity = InfoEntity(count: 20, pages: 1);
      var charactersListEntity =
          CharactersListEntity(info: infoEntity, results: listValue);

      return right(charactersListEntity);
    } else {
      return left(const Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, CharacterEntity>> getCharacter(
      {required int id}) async {
    String url = "${dotenv.env['API_URL']}/character/$id";
    final response = await httpClentProvider.get(url);

    if (response.statusCode == 200) {
      return right(CharacterEntity.fromJson(response.data));
    } else {
      return left(const Failure.badRequest());
    }
  }

  Future<List<String>> cacheLastCharacters(CharactersListEntity result) {
    final List<String> jsonPersonsList =
        result.results.map((person) => json.encode(person.toJson())).toList();

    sharedPreferences.setStringList(CACHED_PERSONS_LIST, jsonPersonsList);
    print('Persons to write Cache: ${jsonPersonsList.length}');
    return Future.value(jsonPersonsList);
  }
}
