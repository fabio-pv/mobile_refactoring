import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DateUtil {
  DateTime _dateRaw;

  DateUtil({@required String dateRaw}) {
    this._dateRaw = DateTime.parse(dateRaw);
  }

  String toDateTime() {
    final format = new DateFormat('dd/MM/yyyy hh:mm');
    return format.format(this._dateRaw);
  }

  String toDate() {
    final format = new DateFormat('dd/MM/yyyy');
    return format.format(this._dateRaw);
  }

}
