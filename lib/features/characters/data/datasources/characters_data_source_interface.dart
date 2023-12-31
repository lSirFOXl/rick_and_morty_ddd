import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/characters_list_entity.dart';
import 'package:rick_and_morty_ddd/features/common/domain/failures/failure.dart';

/// Departments Repository Interface
abstract class CharactersDataSourceInterface {
  /// Get departments list
  Future<Either<Failure, CharactersListEntity>> getCharacters(
      {required int page, required String name});

  Future<Either<Failure, CharacterEntity>> getCharacter({required int id});
}
