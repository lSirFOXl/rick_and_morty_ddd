import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_ddd/configs/app_configs.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';
import 'package:rick_and_morty_ddd/features/common/domain/failures/failure.dart';

///
class CharacterRepository implements CharacterRepositoryInterface {
  final http.Client client;

  CharacterRepository({required this.client});

  @override
  Future<Either<Failure, CharactersListEntity>> getCharacters() async {
    String url = "${AppConfigs().apiUrl}/character";
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final persons = json.decode(response.body);
      return right(CharactersListEntity.fromJson(persons));
    } else {
      return left(const Failure.badRequest());
    }
  }
}
