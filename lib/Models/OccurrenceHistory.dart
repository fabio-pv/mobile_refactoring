import 'package:fiscaliza_ja/Models/OccurrenceStatus.dart';

class OccurrenceHistory {
  String uuid;
  String createdAt;
  OccurrenceStatus occurrenceStatus;

  OccurrenceHistory({
    this.uuid,
    this.createdAt,
    this.occurrenceStatus,
  });

  OccurrenceHistory.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    createdAt = json['created_at'];
    occurrenceStatus =
        json['status'] != null ? new OccurrenceStatus.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['created_at'] = this.createdAt;
    if (this.occurrenceStatus != null) {
      data['status'] = this.occurrenceStatus.toJson();
    }
    return data;
  }
}