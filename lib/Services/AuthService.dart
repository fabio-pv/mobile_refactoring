import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';

class AuthService {
  ApiClient _apiClient;

  AuthService() {
    this._apiClient = new ApiClient();
  }

  Future<bool> verifyAuth() async {
    try {
      await this._apiClient.doRequest(
        endpoint: 'login',
        method: ApiClientMethod.POST,
        statusCodeExpected: 200,
        body: {
          'email': 'deslogado@app.com',
          'password': 'AbCd123409.@@',
        },
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
