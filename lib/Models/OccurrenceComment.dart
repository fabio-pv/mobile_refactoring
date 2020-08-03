class OccurrenceComment {
  String uuid;
  String texto;
  String createdAt;

  OccurrenceComment({this.uuid, this.texto, this.createdAt});

  OccurrenceComment.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    texto = json['texto'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['texto'] = this.texto;
    data['created_at'] = this.createdAt;
    return data;
  }
}