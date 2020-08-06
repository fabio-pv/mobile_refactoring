class OccurrenceFilter {
  String uuid;
  String name;
  String icon;
  String filter;
  String value;
  String operator;

  OccurrenceFilter({
    this.uuid,
    this.name,
    this.icon,
    this.filter,
    this.value,
    this.operator,
  });

  OccurrenceFilter.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    icon = json['icon'];
    filter = json['filter'];
    value = json['value'];
    operator = json['operator'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['filter'] = this.filter;
    data['value'] = this.value;
    data['operator'] = this.operator;
    return data;
  }
}
