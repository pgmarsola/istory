class Character {
  String? name;
  String? description;
  String? penalty;
  String? image;

  Character({this.name, this.description, this.penalty, this.image});

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    penalty = json['penalty'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['penalty'] = this.penalty;
    data['image'] = this.image;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'penalty': penalty,
      'image': image
    };
  }
}
