class OccurrenceStatus {
  String uuid;
  String nome;

  OccurrenceStatus({this.uuid, this.nome});

  OccurrenceStatus.fromJson(Map<String, dynamic> json) {
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