import 'package:fiscaliza_ja/Controllers/NeighborhoodController.dart';
import 'package:flutter/material.dart';

class FullScreenDistrictManualLocationOpenOccurreceScreen
    extends StatefulWidget {
  @override
  _FullScreenDistrictManualLocationOpenOccurreceScreenState createState() =>
      _FullScreenDistrictManualLocationOpenOccurreceScreenState(
        neighborhoodController: new NeighborhoodController(),
      );
}

class _FullScreenDistrictManualLocationOpenOccurreceScreenState
    extends State<FullScreenDistrictManualLocationOpenOccurreceScreen> {
  final NeighborhoodController neighborhoodController;

  _FullScreenDistrictManualLocationOpenOccurreceScreenState({
    @required this.neighborhoodController,
  });

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      final result = await this.neighborhoodController.getList();

      print(result);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha um bairro'),
      ),
      body: Center(
        child: Text('oioioi'),
      ),
    );
  }
}
