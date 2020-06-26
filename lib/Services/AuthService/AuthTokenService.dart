import 'package:shared_preferences/shared_preferences.dart';

class AuthTokenService {
  final KEY_TOKEN = '@TOKEN';
  final SharedPreferences sharedPreferences;

  AuthTokenService({this.sharedPreferences});

  static Future<AuthTokenService> getInstance() async {
    return new AuthTokenService(
      sharedPreferences: await SharedPreferences.getInstance(),
    );
  }

  Future<String> getToken() async {
    try {
      return this.sharedPreferences.getString(KEY_TOKEN);
    } catch (e) {
      rethrow;
    }
  }

  /*CRiar model com validade e tudo mais*/
  Future<bool> setToken({String token}) async {
    return await this.sharedPreferences.setString(KEY_TOKEN, token);
  }
}
