import 'package:fiscaliza_ja/Models/Action.dart';

class OccurrenceAction {
  String uuid;
  int concluido;
  Action action;

  OccurrenceAction({this.uuid, this.concluido, this.action});

  OccurrenceAction.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    concluido = json['concluido'];
    action =
    json['action'] != null ? new Action.fromJson(json['action']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['concluido'] = this.concluido;
    if (this.action != null) {
      data['action'] = this.action.toJson();
    }
    return data;
  }
}