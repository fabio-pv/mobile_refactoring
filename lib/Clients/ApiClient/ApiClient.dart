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

  Future<void> doRequest({
    String endpoint,
    Function method,
    Object body = null,
    int statusCodeExpected = null,
  }) async {
    try {
      final url = this._makeCompleteURL(endpoint: endpoint);
      final header = this._makeHeader();
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

  String _makeCompleteURL({String endpoint}) {
    return this._url + endpoint;
  }

  Map<String, String> _makeHeader() {
    Map<String, String> header = {};
    return header;
  }

  Future<http.Response> _makeRequest({
    Function method,
    String url,
    Map<String, String> headers,
    dynamic body = null,
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
