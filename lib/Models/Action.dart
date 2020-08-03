class Action {
  String uuid;
  String nome;

  Action({this.uuid, this.nome});

  Action.fromJson(Map<String, dynamic> json) {
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