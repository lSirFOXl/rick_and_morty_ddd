import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/repositories/character_repository_interface.dart';
import 'package:rick_and_morty_ddd/features/common/domain/common/pagination_state.dart';

///
class CharactersListController
    extends StateNotifier<PaginationState<CharacterLiteEntity>> {
  CharactersListController(this._repository)
      : super(const PaginationState.loading()) {
    getCharacters();
  }

  int page = 1;
  String name = "";

  final CharacterRepositoryInterface _repository;

  final List<CharacterLiteEntity> _items = [];

  void updateData(List<CharacterLiteEntity> result, bool isLastPage) {
    var targetFunction =
        isLastPage ? PaginationState.noMoreData : PaginationState.data;

    state = targetFunction(_items..addAll(result));
  }

  Future<void> getCharacters() async {
    page = 1;
    state = const PaginationState.loading();
    final res = await _repository.getCharacters(page: page, name: name);

    res.fold((l) {
      state = PaginationState.error(l.toString(), StackTrace.current);
    }, (r) {
      updateData(r.results, page >= r.info.pages);
    });
  }

  Future<void> searchBy(String name) async {
    this.name = name;
    this._items.clear();
    getCharacters();
  }

  Future<void> getCharactersNext() async {
    if (state == PaginationState<CharacterLiteEntity>.onGoingLoading(_items) ||
        state == PaginationState<CharacterLiteEntity>.noMoreData(_items)) {
      log("Rejected");
      return;
    }

    page += 1;

    state = PaginationState.onGoingLoading(_items);

    final res = await _repository.getCharacters(page: page, name: name);

    res.fold((l) {
      state = PaginationState.error(l.toString(), StackTrace.current);
    }, (r) {
      updateData(r.results, page >= r.info.pages);
    });
  }
}
