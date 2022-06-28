import 'package:istory/models/character.model.dart';

abstract class ICharacterRepository {
  Future<List<Character>> fetchCharacters();
}
