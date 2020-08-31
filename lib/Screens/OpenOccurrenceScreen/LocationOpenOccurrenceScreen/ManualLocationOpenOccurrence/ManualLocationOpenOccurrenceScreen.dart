import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Providers/LocationOpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/DistrictManualLocationOpenOccurreceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/TextFieldManualLocationOpenOccurrence.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ManualLocationOpenOccurrenceScreen extends StatefulWidget {
  @override
  _ManualLocationOpenOccurrenceScreenState createState() =>
      _ManualLocationOpenOccurrenceScreenState();
}

class _ManualLocationOpenOccurrenceScreenState
    extends State<ManualLocationOpenOccurrenceScreen> {
  final streetController = TextEditingController();
  final numberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    this.streetController.addListener(this._streetListener);
    this.numberController.addListener(this._numberListener);
  }

  bool delayStreet = false;
  bool delayNumber= false;

  void _streetListener() {
    if (this.delayStreet == true) {
      return;
    }
    Future.delayed(const Duration(seconds: 2), () {
      LocationOpenOccurrenceScreenProvider.of(context).doSetPositionByString(
        street: this.streetController.text,
      );
      this.delayStreet = false;
    });
    this.delayStreet = true;
    return;
  }

  void _numberListener() {
    if (this.delayNumber == true) {
      return;
    }

    Future.delayed(const Duration(seconds: 1), () {
      LocationOpenOccurrenceScreenProvider.of(context).doSetPositionByString(
        number: this.numberController.text,
      );
      this.delayNumber = false;
    });
    this.delayNumber = true;
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Card(
          elevation: 5,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: Container(
            padding: EdgeInsets.all(5.0),
            height: 120,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DistrictManualLocationOpenOccurreceScreen(),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFieldManualLocationOpenOccurrence(
                      hint: 'Rua',
                      width: 150,
                      controller: this.streetController,
                    ),
                    Text(' • '),
                    TextFieldManualLocationOpenOccurrence(
                      hint: 'Número',
                      width: 150,
                      controller: this.numberController,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
