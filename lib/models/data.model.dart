import 'character.model.dart';

class Data {
  List<Character>? character;

  Data({this.character});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['character'] != null) {
      character = <Character>[];
      json['character'].forEach((v) {
        character!.add(new Character.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.character != null) {
      data['character'] = this.character!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'character': character,
    };
  }
}
