import 'package:fiscaliza_ja/Services/AuthService/OccurrenceService.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const route = 'home-screen';

  OccurrenceService _occurrenceService;

  HomeScreen() {
    this._occurrenceService = new OccurrenceService();
    this.load();
  }

  Future<void> load() async {
    try {
      await this._occurrenceService.retrive();
    } catch (e) {
      print(e);
    }
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
