import 'package:fiscaliza_ja/Models/OccurrenceAction.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/PublicOccurrenceDetailScreen/ElementActionPublicOccurrenceDetail.dart';
import 'package:flutter/material.dart';

class ListActionPublicOccurrenceDetailScreen extends StatelessWidget {
  final List<OccurrenceAction> occurrenceAction;

  ListActionPublicOccurrenceDetailScreen({@required this.occurrenceAction});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: this.occurrenceAction.length,
      itemBuilder: (BuildContext context, int index) {
        return ElementActionPublicOccurrenceDetail(
          occurrenceAction: this.occurrenceAction[index],
        );
      },
    );
  }
}
