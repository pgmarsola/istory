// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharacterController on _CharacterControllerBase, Store {
  late final _$characterAtom =
      Atom(name: '_CharacterControllerBase.character', context: context);

  @override
  Character? get character {
    _$characterAtom.reportRead();
    return super.character;
  }

  @override
  set character(Character? value) {
    _$characterAtom.reportWrite(value, super.character, () {
      super.character = value;
    });
  }

  late final _$charactersAtom =
      Atom(name: '_CharacterControllerBase.characters', context: context);

  @override
  ObservableList<Character>? get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(ObservableList<Character>? value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$loadAtom =
      Atom(name: '_CharacterControllerBase.load', context: context);

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  late final _$fetchCharactersAsyncAction =
      AsyncAction('_CharacterControllerBase.fetchCharacters', context: context);

  @override
  Future fetchCharacters() {
    return _$fetchCharactersAsyncAction.run(() => super.fetchCharacters());
  }

  @override
  String toString() {
    return '''
character: ${character},
characters: ${characters},
load: ${load}
    ''';
  }
}
