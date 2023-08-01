import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/controllers/characters_list_controller.dart';
import 'package:rick_and_morty_ddd/features/characters/data/repositories/character_repository.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';

///
/// Infrastructure dependencies
///

final departmentsRepositoryProvider =
    Provider<CharacterRepositoryInterface>((ref) {
  http.Client httpClient = http.Client();

  return CharacterRepository(client: httpClient);
});

///
/// Application dependencies
///
///
final characterListControllerProvider = StateNotifierProvider<
    CharactersListController, AsyncValue<CharactersListEntity>>((ref) {
  final repo = ref.watch(departmentsRepositoryProvider);
  return CharactersListController(repo);
});
