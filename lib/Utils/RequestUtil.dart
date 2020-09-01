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
  static const Map<String, String> OPERATORS = {
    WHERE_EQUAL: WHERE_EQUAL,
    WHERE_NOT_EQUAL: WHERE_NOT_EQUAL,
    WHERE_GREATER_THAN_OR_EQUAL_TO: WHERE_GREATER_THAN_OR_EQUAL_TO,
    WHERE_LESS_THAN_OR_EQUAL_TO: WHERE_LESS_THAN_OR_EQUAL_TO,
    WHERE_LIKE: WHERE_LIKE,
  };

  final String endpoint;
  String _query = '';
  int _whereCount = 0;

  RequestUtil({
    this.endpoint = '',
  });

  RequestUtil where({
    @required String property,
    @required String operator,
    @required String value,
    bool ignoreNull = false,
  }) {
    if (ignoreNull == true) {
      if (value == null) {
        return this;
      }
    }

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

  RequestUtil page({int value}) {
    final page = 'page=$value';
    this.addInQuery(
      newQuery: page,
    );
    return this;
  }

  void addInQuery({
    @required String newQuery,
  }) {
    if (this._query.isEmpty) {
      this._query = '?';
      this._query += newQuery;
      return;
    }

    this._query += '&';
    this._query += newQuery;
  }

  String result() {
    this._query = this.endpoint + this._query;
    return this._query;
  }
}
