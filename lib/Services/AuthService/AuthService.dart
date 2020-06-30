import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Services/AuthService/AuthTokenService.dart';

class AuthService {
  ApiClient _apiClient;

  AuthService() {
    this._apiClient = new ApiClient();
  }

  static Future<void> startAuth() async {
    try {
      print('startAuth');
      AuthService authService = new AuthService();
      authService._getToken();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _getToken() async {
    try {
      final authTokenService = await AuthTokenService.getInstance();

      authTokenService.setToken(
        token: 'wwwwwwwwwwwwwwwwww',
      );

      print(await authTokenService.getToken());
    } catch (e) {
      rethrow;
    }
  }
}
