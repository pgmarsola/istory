import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:istory/mobx/character/character.repository.interface.dart';
import 'package:istory/models/character.model.dart';
import 'package:istory/models/data.model.dart';

class CharacterRepository extends ICharacterRepository {
  @override
  Future<List<Character>> fetchCharacters() async {
    List<Character> list = [];

    final String response =
        await rootBundle.loadString('assets/json/characters.json');
    final items = await json.decode(response);

    final characters = items.map((i) => Character.fromJson(i)).toList();
    characters.forEach((c) {
      list.add(c);
    });

    return list;
  }
}
