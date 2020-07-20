import 'dart:convert';

import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';
import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Utils/StatusCodeUtil.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

abstract class BaseService {
  ApiClient _apiClient;
  @protected
  String endpoint;

  BaseService() {
    this._apiClient = new ApiClient();
  }

  Future<Iterable> retriveAll() async {
    try {
      final response = await this._apiClient.doRequest(
            endpoint: this.endpoint,
            method: ApiClientMethod.GET,
            statusCodeExpected: StatusCodeUtil.OK,
          );

      Iterable iterable = jsonDecode(response.body)['data'];

      return iterable;
    } catch (e) {
      rethrow;
    }
  }
}
