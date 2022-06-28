import 'dart:async';

import 'package:istory/mobx/character/character.repository.dart';
import 'package:istory/mobx/load/load.controller.dart';
import 'package:mobx/mobx.dart';

import '../../models/character.model.dart';

part 'character.controller.g.dart';

class CharacterController = _CharacterControllerBase with _$CharacterController;

abstract class _CharacterControllerBase with Store {
  CharacterRepository? _characterRepository;
  LoadController? _loadController;

  _CharacterControllerBase() {
    _characterRepository = CharacterRepository();
    _loadController = LoadController();
  }

  @observable
  Character? character;

  @observable
  ObservableList<Character>? characters;

  @observable
  bool load = false;

  @action
  fetchCharacters() async {
    load = true;
    if (load == true) {
      _loadController!.load = true;

      characters = ObservableList<Character>.of(
          await _characterRepository!.fetchCharacters());

      if (characters!.isNotEmpty) {
        load = false;
        _loadController!.load = false;
      }
    }

    load = false;
  }
}
