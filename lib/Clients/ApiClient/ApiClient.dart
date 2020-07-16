import 'dart:io';

import 'package:fiscaliza_ja/Services/AuthService/AuthTokenService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  String _url;
  List _requestWithoutBody = [
    http.get.runtimeType,
    http.delete.runtimeType,
  ];

  ApiClient() {
    this._makeURL();
  }

  String _makeURL() {
    try {
      final urlBase = DotEnv().env['API_BASE_URL'];
      final prefix = DotEnv().env['API_PREFIX'];
      final version = DotEnv().env['API_VERSION'];

      this._url = urlBase + '/' + prefix + '/' + version + '/';
    } catch (e) {
      rethrow;
    }
  }

  Future<http.Response> doRequest({
    @required String endpoint,
    @required Function method,
    Object body,
    int statusCodeExpected,
    bool auth = true,
  }) async {
    try {
      final url = this._makeCompleteURL(
        endpoint: endpoint,
      );

      final header = await this._makeHeader(
        auth: auth,
      );

      final response = await this._makeRequest(
        method: method,
        url: url,
        headers: header,
        body: body,
      );

      this._checkExpectedStatusCode(
        statusCode: statusCodeExpected,
        response: response,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  String _makeCompleteURL({@required String endpoint}) {
    return this._url + endpoint;
  }

  Future<Map<String, String>> _makeHeader({@required bool auth}) async {
    Map<String, String> header = {};
    header = await this._makeHeaderWithAuth(auth: auth, header: header);
    return header;
  }

  Future<Map<String, String>> _makeHeaderWithAuth({
    @required bool auth,
    @required Map<String, String> header,
  }) async {
    if (auth != true) {
      return header;
    }

    final authTokenService = await AuthTokenService.getInstance();
    final token = await authTokenService.getTokenValid();
    header.addAll({HttpHeaders.authorizationHeader: 'Bearer ' + token});

    return header;
  }

  Future<http.Response> _makeRequest({
    @required Function method,
    @required String url,
    Map<String, String> headers,
    dynamic body,
  }) async {
    if (this._requestWithoutBody.contains(method.runtimeType)) {
      return await method(
        url,
        headers: headers,
      );
    }

    return await method(
      url,
      headers: headers,
      body: body,
    );
  }

  void _checkExpectedStatusCode({int statusCode, http.Response response}) {
    if (statusCode == null) {
      return;
    }

    if (statusCode != response.statusCode) {
      throw new Exception(response.body);
    }
  }
}
