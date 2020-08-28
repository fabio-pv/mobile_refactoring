class Neighborhood {
  String uuid;
  String nome;
  double lat;
  double lon;

  Neighborhood({this.uuid, this.nome, this.lat, this.lon});

  Neighborhood.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    nome = json['nome'];
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    return data;
  }
}