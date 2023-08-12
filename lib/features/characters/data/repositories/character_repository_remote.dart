import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_ddd/configs/providers.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/characters_data_source_interface.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/local/characters_local_data_source.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/remote/characters_remote_data_source.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';
import 'package:rick_and_morty_ddd/features/common/domain/failures/failure.dart';

///
class CharacterRepositoryRemote implements CharacterRepositoryInterface {
  final CharactersRemoteDataSource charactersRemoteDataSource;
  final CharactersLocalDataSource charactersLocalDataSource;

  late final CharactersDataSourceInterface charactersDataSource;

  CharacterRepositoryRemote(
      {required this.charactersRemoteDataSource,
      required this.charactersLocalDataSource}) {
    charactersDataSource = charactersRemoteDataSource;
  }

  @override
  Future<Either<Failure, CharactersListEntity>> getCharacters(
      {required int page, required String name}) async {
    var result =
        await charactersDataSource.getCharacters(page: page, name: name);

    result.fold(
        (l) => null, (r) => charactersLocalDataSource.cacheLastCharacters(r));

    return result;
  }

  @override
  Future<Either<Failure, CharacterEntity>> getCharacter(
      {required int id}) async {
    return charactersDataSource.getCharacter(id: id);
  }
}
