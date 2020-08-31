import 'package:fiscaliza_ja/Models/Neighborhood.dart';
import 'package:fiscaliza_ja/Providers/LocationOpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/FullScreenDistrictManualLocationOpenOccurreceScreen.dart';
import 'package:flutter/material.dart';

class DistrictManualLocationOpenOccurreceScreen extends StatefulWidget {
  @override
  _DistrictManualLocationOpenOccurreceScreenState createState() =>
      _DistrictManualLocationOpenOccurreceScreenState();
}

class _DistrictManualLocationOpenOccurreceScreenState
    extends State<DistrictManualLocationOpenOccurreceScreen> {
  Neighborhood _neighborhood;

  void _doShowSelect() async {
    Neighborhood neighborhood = await Navigator.of(context).push(
      MaterialPageRoute<Neighborhood>(
        builder: (BuildContext context) {
          return FullScreenDistrictManualLocationOpenOccurreceScreen();
        },
        fullscreenDialog: true,
      ),
    );

    setState(() {
      this._neighborhood = neighborhood;
    });

    LocationOpenOccurrenceScreenProvider.of(context).doSetPositionByString(
      location: this._neighborhood.nome,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: this._doShowSelect,
        child: Text(
          this._neighborhood?.nome ?? 'Bairro',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: (this._neighborhood == null ? Colors.grey : Colors.black),
          ),
        ),
      ),
    );
  }
}
