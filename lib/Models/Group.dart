import 'package:fiscaliza_ja/Models/Subsecretary.dart';

class Group {
  String uuid;
  String nome;
  String imagem;
  String descricao;
  List<Subsecretary> subsecretaries;

  Group({
    this.uuid,
    this.nome,
    this.imagem,
    this.subsecretaries,
    this.descricao,
  });

  Group.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    nome = json['nome'];
    imagem = json['imagem'];
    descricao = json['descricao'];
    if (json['subsecretaries'] != null) {
      subsecretaries = new List<Subsecretary>();
      json['subsecretaries'].forEach((v) {
        subsecretaries.add(new Subsecretary.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    data['imagem'] = this.imagem;
    data['descricao'] = this.descricao;
    if (this.subsecretaries != null) {
      data['subsecretaries'] =
          this.subsecretaries.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
