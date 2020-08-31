import 'package:alphabet_list_scroll_view/alphabet_list_scroll_view.dart';
import 'package:fiscaliza_ja/Controllers/NeighborhoodController.dart';
import 'package:fiscaliza_ja/Models/Neighborhood.dart';
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

  List<Neighborhood> _neighborhoodList;
  List<String> _neighborhoodStringList;

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      final result = await this.neighborhoodController.getList();
      this._neighborhoodStringList = result.map((e) => e.nome).toList();

      setState(() {
        this._neighborhoodList = result;
        this._neighborhoodStringList = this._neighborhoodStringList;
      });
    } catch (e) {
      rethrow;
    }
  }

  void _returnSelect({@required String name}) {
    this._neighborhoodList.forEach((element) {
      if (element.nome != name) {
        return;
      }
      Navigator.of(context).pop(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (this._neighborhoodList == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Escolha um bairro'),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha um bairro'),
      ),
      body: AlphabetListScrollView(
        strList: this._neighborhoodStringList,
        highlightTextStyle: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        showPreview: true,
        indexedHeight: (i) {
          return 60;
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                this._returnSelect(
                  name: this._neighborhoodStringList[index],
                );
              },
              child: Text(
                this._neighborhoodStringList[index],
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          );
        },
        keyboardUsage: true,
      ),
    );
  }
}
