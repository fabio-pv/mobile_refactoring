import 'dart:convert';

import 'package:fiscaliza_ja/Models/Token.dart';
import 'package:fiscaliza_ja/Services/AuthService/AuthService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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

  String getToken() {
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

  Future<String> getTokenValid() async {
    try {
      final lastToken = this.getToken();

      if (lastToken == null) {
        await this._retriveTokenOff();
        await this.getTokenValid();
      }

      Token token = Token.fromJson(jsonDecode(lastToken));
      if (token.isExpired()) {
        await this._tryRefreshToken(
          lastToken: token.accessToken,
        );
        await this.getTokenValid();
      }

      return token.accessToken;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _retriveTokenOff() async {
    try {
      AuthService authService = new AuthService();

      Token token = await authService.login(
        email: DotEnv().env['USER_OFF_EMAIL'],
        password: DotEnv().env['USER_OFF_PASSWORD'],
      );

      await this.setToken(
        token: jsonEncode(token.toJson()),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _tryRefreshToken({
    @required String lastToken,
  }) async {
    try {
      AuthService authService = new AuthService();

      Token token = await authService.refreshToken(
        tokenCustom: lastToken,
      );

      await this.setToken(
        token: jsonEncode(token.toJson()),
      );
    } catch (e) {
      rethrow;
    }
  }
}
