import 'package:fiscaliza_ja/Models/Secretary.dart';
import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/PublicOccurrenceDetailScreen/SecretaryPublicOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/PublicOccurrenceDetailScreen/SubsecretaryActionsPublicOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PublicOccurrenceDetailScreen extends StatelessWidget {
  final Subsecretary subsecretary;
  final Secretary secretary;

  PublicOccurrenceDetailScreen({
    @required this.subsecretary,
    @required this.secretary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
        right: ListOccurrenceDetailScreen.PADDING_DEFAULT,
      ),
      child: CardDefaultOccurrenceDetailScreen(
        padding: 0,
        child: Column(
          children: [
            SecretaryPublicOccurrenceDetailScreen(
              secretary: this.secretary,
            ),
            SubsecretaryActionsPublicOccurrenceDetailScreen(
              subsecretary: this.subsecretary,
            ),
          ],
        ),
      ),
    );
  }
}
