
import 'package:fiscaliza_ja/Services/AuthService/OccurrenceService.dart';
import 'package:fiscaliza_ja/Utils/ErroUtil.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/HeaderMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatelessWidget {
  static const route = 'home-screen';

  OccurrenceService _occurrenceService;

  /*Remover o load, colocar no init*/
  HomeScreen() {
    this._occurrenceService = new OccurrenceService();
    this.load();
  }

  Future<void> load() async {
    try {
      await this._occurrenceService.retrive();
    } catch (e) {
      ErrorUtil.error(exception: e);
    }
  }

  /*Ideias
  Tentar por os card coloridos das ocorrencias fazer algo diferente*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            10.0,
          ),
          child: Column(
            children: [
              HeaderMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
