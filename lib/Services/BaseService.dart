import 'dart:convert';

import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';
import 'package:fiscaliza_ja/Utils/StatusCodeUtil.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseService {
  ApiClient _apiClient;
  @protected
  String endpoint;

  BaseService() {
    this._apiClient = new ApiClient();
  }

  Future<Iterable> retrieveAll({
    String queryString = '',
  }) async {
    try {
      final response = await this._apiClient.doRequest(
            endpoint: this.endpoint,
            method: ApiClientMethod.GET,
            statusCodeExpected: StatusCodeUtil.OK,
            queryString: queryString,
          );

      Iterable iterable = jsonDecode(response.body)['data'];

      return iterable;
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> retrieve({String uuid}) async {
    try {
      final response = await this._apiClient.doRequest(
            endpoint: this.endpoint + '/$uuid',
            method: ApiClientMethod.GET,
          );

      Map<String, dynamic> map = jsonDecode(response.body)['data'];

      return map;

    } catch (e) {
      rethrow;
    }
  }
}
