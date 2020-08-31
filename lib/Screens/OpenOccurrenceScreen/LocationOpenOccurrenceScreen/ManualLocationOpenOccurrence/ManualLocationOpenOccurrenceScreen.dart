import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/DistrictManualLocationOpenOccurreceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/TextFieldManualLocationOpenOccurrence.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ManualLocationOpenOccurrenceScreen extends StatelessWidget {
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
            padding: EdgeInsets.all(15.0),
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
                    ),
                    Text(' • '),
                    TextFieldManualLocationOpenOccurrence(
                      hint: 'Número',
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
