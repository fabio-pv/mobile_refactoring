class Secretary {
  String uuid;
  String nome;
  String descricao;
  String cor;

  Secretary({this.uuid, this.nome, this.descricao, this.cor});

  Secretary.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    nome = json['nome'];
    descricao = json['descricao'];
    cor = json['cor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['cor'] = this.cor;
    return data;
  }
}