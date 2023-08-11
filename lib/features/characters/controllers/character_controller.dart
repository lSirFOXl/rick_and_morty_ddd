import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';

///
class CharacterController extends StateNotifier<AsyncValue<CharacterEntity>> {
  CharacterController(this._repository, this.id)
      : super(const AsyncValue.loading()) {
    getCharacter(id);
  }

  final int id;

  final CharacterRepositoryInterface _repository;

  Future<void> getCharacter(id) async {
    final res = await _repository.getCharacter(id: id);

    res.fold((l) {
      state = AsyncValue.error(l.toString(), StackTrace.current);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
