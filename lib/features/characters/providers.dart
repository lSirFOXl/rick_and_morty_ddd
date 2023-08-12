import 'dart:ffi';

import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/configs/providers.dart';
import 'package:rick_and_morty_ddd/features/characters/controllers/character_controller.dart';
import 'package:rick_and_morty_ddd/features/characters/controllers/characters_list_controller.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/characters_data_source_interface.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/local/characters_local_data_source.dart';
import 'package:rick_and_morty_ddd/features/characters/data/datasources/remote/characters_remote_data_source.dart';
import 'package:rick_and_morty_ddd/features/characters/data/repositories/character_repository_remote.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';
import 'package:rick_and_morty_ddd/features/common/domain/common/pagination_state.dart';

///
/// Infrastructure dependencies
///

final charactersLocalDateSourceProvider =
    Provider<CharactersLocalDataSource>((ref) {
  return CharactersLocalDataSource(
      sharedPreferences: ref.watch(sharedPreferencesProvider).asData!.value);
});

final charactersRemoteDateSourceProvider =
    Provider<CharactersRemoteDataSource>((ref) {
  return CharactersRemoteDataSource();
});

final charactersRepositoryProvider =
    Provider<CharacterRepositoryInterface>((ref) {
  return CharacterRepositoryRemote(
      charactersRemoteDataSource: ref.watch(charactersRemoteDateSourceProvider),
      charactersLocalDataSource: ref.watch(charactersLocalDateSourceProvider));
});

///
/// Application dependencies
///
///
final characterListControllerProvider = StateNotifierProvider<
    CharactersListController, PaginationState<CharacterLiteEntity>>((ref) {
  final repo = ref.watch(charactersRepositoryProvider);
  return CharactersListController(repo);
});

final characterControllerProvider = StateNotifierProvider.family
    .autoDispose<CharacterController, AsyncValue<CharacterEntity>, int>(
        (ref, id) {
  final repo = ref.watch(charactersRepositoryProvider);
  return CharacterController(repo, id);
});
