class OccurrenceFile {
  String uuid;
  String file;
  String fileLink;

  OccurrenceFile({this.uuid, this.file, this.fileLink});

  OccurrenceFile.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    file = json['file'];
    fileLink = json['file_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['file'] = this.file;
    data['file_link'] = this.fileLink;
    return data;
  }
}