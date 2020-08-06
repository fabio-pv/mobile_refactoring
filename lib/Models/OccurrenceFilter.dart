class OccurrenceFilter {
  String uuid;
  String name;
  String icon;
  String filter;
  String value;

  OccurrenceFilter({
    this.uuid,
    this.name,
    this.icon,
    this.filter,
    this.value,
  });

  OccurrenceFilter.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    icon = json['icon'];
    filter = json['filter'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['filter'] = this.filter;
    data['value'] = this.value;
    return data;
  }
}
