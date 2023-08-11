import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_ddd/configs/providers.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';
import 'package:rick_and_morty_ddd/features/common/domain/failures/failure.dart';

///
class CharacterRepository implements CharacterRepositoryInterface {
  final http.Client client;

  CharacterRepository({required this.client});

  @override
  Future<Either<Failure, CharactersListEntity>> getCharacters(
      {required int page, required String name}) async {
    String url = "${dotenv.env['API_URL']}/character";
    final response = await httpClentProvider
        .get(url, queryParameters: {"page": page, "name": name});

    if (response.statusCode == 200) {
      return right(CharactersListEntity.fromJson(response.data));
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
