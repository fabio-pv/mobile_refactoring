class OccurrenceHistory {
  String uuid;
  String createdAt;
  Status status;

  OccurrenceHistory({this.uuid, this.createdAt, this.status});

  OccurrenceHistory.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    createdAt = json['created_at'];
    status =
    json['status'] != null ? new Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['created_at'] = this.createdAt;
    if (this.status != null) {
      data['status'] = this.status.toJson();
    }
    return data;
  }
}

class Status {
  int id;
  String uuid;
  String nome;

  Status({this.id, this.uuid, this.nome});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    return data;
  }
}