import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  String _url;

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
  }) async {
    try {

      final url = this._makeCompleteURL(endpoint: endpoint);

      http.Response response = await method(url);
      print(response.statusCode);
      print(response.body);

    } catch (e) {
      rethrow;
    }
  }

  String _makeCompleteURL({String endpoint}) {
    return this._url + endpoint;
  }
}
