import 'package:fiscaliza_ja/Models/District.dart';
import 'package:fiscaliza_ja/Models/OccurrenceAction.dart';
import 'package:fiscaliza_ja/Models/OccurrenceComment.dart';
import 'package:fiscaliza_ja/Models/OccurrenceFile.dart';
import 'package:fiscaliza_ja/Models/OccurrenceHistory.dart';
import 'package:fiscaliza_ja/Models/OccurrenceStatus.dart';
import 'package:fiscaliza_ja/Models/Secretary.dart';
import 'package:fiscaliza_ja/Models/Street.dart';
import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Models/User.dart';

class Occurrence {
  String uuid;
  String codigo;
  String texto;
  String createdAt;
  int visualizacoes;
  String ruaTemporaria;
  String numero;
  String complemento;
  String pontoReferencia;
  OccurrenceStatus occurrenceStatus;
  User user;
  Subsecretary subsecretary;
  Secretary secretary;
  District district;
  Street street;
  List<OccurrenceHistory> occurrenceHistory;
  List<OccurrenceFile> occurrenceFile;
  List<OccurrenceAction> occurrenceAction;
  List<OccurrenceComment> occurrenceComment;

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
    this.district,
    this.ruaTemporaria,
    this.street,
    this.numero,
    this.complemento,
    this.pontoReferencia,
    this.occurrenceHistory,
    this.secretary,
    this.occurrenceAction,
    this.occurrenceComment,
  });

  Occurrence.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    codigo = json['codigo'];
    texto = json['texto'];
    createdAt = json['created_at'];
    visualizacoes = json['visualizacoes'];
    ruaTemporaria = json['rua_temporaria'];
    numero = json['numero'];
    complemento = json['complemento'];
    pontoReferencia = json['ponto_referencia'];
    occurrenceStatus = json['occurrence_status'] != null
        ? new OccurrenceStatus.fromJson(json['occurrence_status'])
        : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    subsecretary = json['subsecretary'] != null
        ? new Subsecretary.fromJson(json['subsecretary'])
        : null;
    district = json['district'] != null
        ? new District.fromJson(json['district'])
        : null;
    street =
        json['street'] != null ? new Street.fromJson(json['street']) : null;
    secretary = json['secretary'] != null
        ? new Secretary.fromJson(json['secretary'])
        : null;
    if (json['occurrence_file'] != null) {
      occurrenceFile = new List<OccurrenceFile>();
      json['occurrence_file'].forEach((v) {
        occurrenceFile.add(new OccurrenceFile.fromJson(v));
      });
    }
    if (json['occurrence_historys'] != null) {
      occurrenceHistory = new List<OccurrenceHistory>();
      json['occurrence_historys'].forEach((v) {
        occurrenceHistory.add(new OccurrenceHistory.fromJson(v));
      });
    }
    if (json['occurrence_actions'] != null) {
      occurrenceAction = new List<OccurrenceAction>();
      json['occurrence_actions'].forEach((v) {
        occurrenceAction.add(new OccurrenceAction.fromJson(v));
      });
    }
    if (json['occurrence_comments'] != null) {
      occurrenceComment = new List<OccurrenceComment>();
      json['occurrence_comments'].forEach((v) {
        occurrenceComment.add(new OccurrenceComment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['codigo'] = this.codigo;
    data['texto'] = this.texto;
    data['created_at'] = this.createdAt;
    data['visualizacoes'] = this.visualizacoes;
    data['rua_temporaria'] = this.ruaTemporaria;
    data['numero'] = this.numero;
    data['complemento'] = this.complemento;
    data['ponto_referencia'] = this.pontoReferencia;
    if (this.occurrenceStatus != null) {
      data['occurrence_status'] = this.occurrenceStatus.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.subsecretary != null) {
      data['subsecretary'] = this.subsecretary.toJson();
    }
    if (this.district != null) {
      data['district'] = this.district.toJson();
    }
    if (this.street != null) {
      data['street'] = this.street.toJson();
    }
    if (this.secretary != null) {
      return data['secretary'] = this.secretary.toJson();
    }
    if (this.occurrenceFile != null) {
      data['occurrence_file'] =
          this.occurrenceFile.map((v) => v.toJson()).toList();
    }
    if (this.occurrenceHistory != null) {
      data['occurrence_historys'] =
          this.occurrenceHistory.map((v) => v.toJson()).toList();
    }
    if (this.occurrenceAction != null) {
      data['occurrence_actions'] =
          this.occurrenceAction.map((v) => v.toJson()).toList();
    }
    if (this.occurrenceComment != null) {
      data['occurrence_comments'] =
          this.occurrenceComment.map((v) => v.toJson()).toList();
    }
    return data;
  }

  List<String> getImagens() {
    List<String> imageList = [];

    if (this.subsecretary.imagem.isNotEmpty) {
      imageList.add(this.subsecretary.imagem);
    }

    if (this.occurrenceFile == null) {
      return imageList;
    }

    imageList.clear();
    this.occurrenceFile.forEach((element) {
      imageList.add(element.fileLink);
    });

    return imageList;
  }
}
