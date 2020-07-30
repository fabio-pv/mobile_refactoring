import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/AddressOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ProtocolOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/TextOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/TimelineOccurrenceDetailScreen/TimelineOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/UserOccurrenceDetailScreen/UserOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ListOccurrenceDetailScreen extends StatelessWidget {
  static const double SIZED_BOX_DEFAULT = 15;
  static const double PADDING_DEFAULT = 20;
  final Occurrence occurrence;

  ListOccurrenceDetailScreen({@required this.occurrence});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        top: 135,
        bottom: 20,
      ),
      children: [
        ProtocolOccurrenceDetailScreen(
          protocol: this.occurrence.codigo,
        ),
        SizedBox(
          height: SIZED_BOX_DEFAULT,
        ),
        UserOccurrenceDetailScreen(),
        SizedBox(
          height: SIZED_BOX_DEFAULT,
        ),
        ImageOccurrenceDetailScreen(),
        SizedBox(
          height: SIZED_BOX_DEFAULT,
        ),
        TextOccurrenceDetailScreen(
          text: this.occurrence.texto,
        ),
        SizedBox(
          height: SIZED_BOX_DEFAULT,
        ),
        AddressOccurrenceDetailScreen(
          occurrence: this.occurrence,
        ),
        SizedBox(
          height: 10,
        ),
        TimelineOccurrenceDetailScreen(),
      ],
    );
  }
}
