import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_ddd/configs/providers.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/characters_data_source_interface.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/local/characters_local_data_source.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/common/domain/failures/failure.dart';

///
class CharactersRemoteDataSource implements CharactersDataSourceInterface {
  CharactersRemoteDataSource();

  @override
  Future<Either<Failure, CharactersListEntity>> getCharacters(
      {required int page, required String name}) async {
    String url = "${dotenv.env['API_URL']}/character";
    final response = await httpClentProvider
        .get(url, queryParameters: {"page": page, "name": name});

    if (response.statusCode == 200) {
      CharactersListEntity results =
          CharactersListEntity.fromJson(response.data);

      return right(results);
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
}
