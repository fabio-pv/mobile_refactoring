import 'package:fiscaliza_ja/Models/OccurrenceStatus.dart';
import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Models/User.dart';

class Occurrence {
  String uuid;
  String codigo;
  String texto;
  String createdAt;
  int visualizacoes;
  OccurrenceStatus occurrenceStatus;
  Null occurrenceFile;
  User user;
  Subsecretary subsecretary;

  Occurrence({
    this.uuid,
    this.codigo,
    this.texto,
    this.createdAt,
    this.visualizacoes,
    this.occurrenceStatus,
    this.occurrenceFile,
    this.user,
    this.subsecretary,
  });

  Occurrence.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    codigo = json['codigo'];
    texto = json['texto'];
    createdAt = json['created_at'];
    visualizacoes = json['visualizacoes'];
    occurrenceStatus = json['occurrence_status'] != null
        ? new OccurrenceStatus.fromJson(json['occurrence_status'])
        : null;
    occurrenceFile = json['occurrence_file'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    subsecretary = json['subsecretary'] != null
        ? new Subsecretary.fromJson(json['subsecretary'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['codigo'] = this.codigo;
    data['texto'] = this.texto;
    data['created_at'] = this.createdAt;
    data['visualizacoes'] = this.visualizacoes;
    if (this.occurrenceStatus != null) {
      data['occurrence_status'] = this.occurrenceStatus.toJson();
    }
    data['occurrence_file'] = this.occurrenceFile;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.subsecretary != null) {
      data['subsecretary'] = this.subsecretary.toJson();
    }
    return data;
  }
}
