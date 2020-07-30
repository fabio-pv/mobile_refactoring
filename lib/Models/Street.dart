class Street {
  String uuid;
  String nome;

  Street({this.uuid, this.nome});

  Street.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    return data;
  }
}