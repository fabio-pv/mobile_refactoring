import 'package:fiscaliza_ja/Widgets/Occurrence/StatisticOccurrenceWidget.dart';
import 'package:flutter/material.dart';

class RequestUtil {
  static const WHERE_EQUAL = 'equal';
  static const WHERE_NOT_EQUAL = 'not_equal';
  static const WHERE_GREATER_THAN_OR_EQUAL_TO = 'greater_than_or_equal_to';
  static const WHERE_LESS_THAN_OR_EQUAL_TO = 'less_than_or_equal_to';
  static const WHERE_LIKE = 'like';
  static const ORDER_ASC = 'asc';
  static const ORDER_DESC = 'desc';
  static const PAGINATION_FALSE = false;

  final String endpoint;
  String query = '';
  int _whereCount = 0;

  RequestUtil({
    this.endpoint = '',
  });

  RequestUtil where({
    @required String property,
    @required String operator,
    @required String value,
  }) {
    final filter = 'filters[' +
        this._whereCount.toString() +
        '][' +
        property +
        '@' +
        operator +
        ']=' +
        value;

    this.addInQuery(
      newQuery: filter,
    );
    this._whereCount++;
    return this;
  }

  RequestUtil orderBy({
    @required String property,
    @required String order,
  }) {
    final query = 'order[$property]=$order';
    this.addInQuery(
      newQuery: query,
    );
    return this;
  }

  RequestUtil pagination({
    @required dynamic value,
  }) {
    final pagination = 'paginate=${value.toString()}';
    this.addInQuery(
      newQuery: pagination,
    );
    return this;
  }

  void addInQuery({
    @required String newQuery,
  }) {
    if (this.query.isEmpty) {
      this.query = '?';
      this.query += newQuery;
      return;
    }

    this.query += '&';
    this.query += newQuery;
  }

  String result() {
    this.query = this.endpoint + this.query;
    return this.query;
  }
}
