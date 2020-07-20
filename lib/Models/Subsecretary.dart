class Subsecretary {
  String uuid;
  String nome;
  String imagem;

  Subsecretary({this.uuid, this.nome, this.imagem});

  Subsecretary.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    nome = json['nome'];
    imagem = json['imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    data['imagem'] = this.imagem;
    return data;
  }
}