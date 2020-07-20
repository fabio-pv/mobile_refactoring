class User {
  String uuid;
  String name;
  Null foto;

  User({this.uuid, this.name, this.foto});

  User.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['foto'] = this.foto;
    return data;
  }
}