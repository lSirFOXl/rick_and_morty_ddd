import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';

///
class CharactersListController
    extends StateNotifier<AsyncValue<CharactersListEntity>> {
  CharactersListController(this._repository)
      : super(const AsyncValue.loading()) {
    getCharacters();
  }

  final CharacterRepositoryInterface _repository;

  Future<void> getCharacters() async {
    final res = await _repository.getCharacters();
    state = res.fold((l) => AsyncValue.error(l.toString(), StackTrace.current),
        AsyncValue.data);
  }
}
