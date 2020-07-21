import 'package:fiscaliza_ja/Models/OccurrenceFile.dart';
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
  List<OccurrenceFile> occurrenceFile;
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
    if (json['occurrence_file'] != null) {
      occurrenceFile = new List<OccurrenceFile>();
      json['occurrence_file'].forEach((v) {
        occurrenceFile.add(new OccurrenceFile.fromJson(v));
      });
    }
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
    if (this.occurrenceFile != null) {
      data['occurrence_file'] =
          this.occurrenceFile.map((v) => v.toJson()).toList();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.subsecretary != null) {
      data['subsecretary'] = this.subsecretary.toJson();
    }
    return data;
  }
}
