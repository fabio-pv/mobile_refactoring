import 'package:flutter/material.dart';

class OccurrenceStatus {
  static Color STATUS_1_COLOR = Colors.orange[800];
  static Color STATUS_2_COLOR = Colors.deepOrange[800];
  static Color STATUS_3_COLOR = Colors.blue[800];
  static Color STATUS_4_COLOR = Colors.deepPurple[800];
  static Color STATUS_5_COLOR = Colors.greenAccent[700];
  static Color STATUS_6_COLOR = Colors.redAccent[700];
  static List<Color> STATUS = [
    OccurrenceStatus.STATUS_1_COLOR,
    OccurrenceStatus.STATUS_2_COLOR,
    OccurrenceStatus.STATUS_3_COLOR,
    OccurrenceStatus.STATUS_4_COLOR,
    OccurrenceStatus.STATUS_5_COLOR,
    OccurrenceStatus.STATUS_6_COLOR,
  ];

  int id;
  String uuid;
  String nome;

  OccurrenceStatus({
    this.id,
    this.uuid,
    this.nome,
  });

  OccurrenceStatus.fromJson(Map<String, dynamic> json) {
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

  Color getStatusColor() {
    return OccurrenceStatus.STATUS[this.id];
  }
}
