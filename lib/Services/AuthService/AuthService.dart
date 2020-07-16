import 'dart:convert';

import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientBody.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';
import 'package:fiscaliza_ja/Models/Token.dart';
import 'package:fiscaliza_ja/Services/AuthService/AuthTokenService.dart';

class AuthService {
  ApiClient _apiClient;

  AuthService() {
    this._apiClient = new ApiClient();
  }

  Future<Token> login({
    String email,
    String password,
  }) async {
    try {
      final body = ApiClientBody.makeBody(body: {
        'email': email,
        'password': password,
      });

      final response = await this._apiClient.doRequest(
            endpoint: 'login',
            method: ApiClientMethod.POST,
            body: body,
            auth: false,
            statusCodeExpected: 200,
          );

      Token token = Token.fromJson(jsonDecode(response.body));

      return token;
    } catch (e) {
      rethrow;
    }
  }
}
