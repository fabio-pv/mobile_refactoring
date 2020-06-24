import 'package:fiscaliza_ja/Clients/ApiClient/ApiClient.dart';
import 'package:fiscaliza_ja/Clients/ApiClient/ApiClientMethod.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const route = 'home-screen';

  HomeScreen() {
    final apiClient = new ApiClient();
    apiClient.doRequest(
      endpoint: 'login',
      method: ApiClientMethod.POST,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
