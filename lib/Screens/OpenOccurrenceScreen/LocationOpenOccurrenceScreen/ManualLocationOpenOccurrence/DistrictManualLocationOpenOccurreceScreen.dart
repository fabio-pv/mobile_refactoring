import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/FullScreenDistrictManualLocationOpenOccurreceScreen.dart';
import 'package:flutter/material.dart';

class DistrictManualLocationOpenOccurreceScreen extends StatefulWidget {
  @override
  _DistrictManualLocationOpenOccurreceScreenState createState() =>
      _DistrictManualLocationOpenOccurreceScreenState();
}

class _DistrictManualLocationOpenOccurreceScreenState
    extends State<DistrictManualLocationOpenOccurreceScreen> {
  bool _showSelect = false;

  void _doShowSelect() {
     Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return FullScreenDistrictManualLocationOpenOccurreceScreen();
        },
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: this._doShowSelect,
        child: Text(
          'Bairro',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
