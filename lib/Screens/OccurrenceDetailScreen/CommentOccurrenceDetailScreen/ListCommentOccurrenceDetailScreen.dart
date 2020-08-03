import 'package:fiscaliza_ja/Models/OccurrenceComment.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/CommentOccurrenceDetailScreen/ElementListCommentOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ListCommentOccurrenceDetailScreen extends StatelessWidget {
  final List<OccurrenceComment> occurrenceComents;

  ListCommentOccurrenceDetailScreen({@required this.occurrenceComents});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.occurrenceComents.length,
        itemBuilder: (BuildContext context, int index) {
          return ElementListCommentOccurrenceDetailScreen(
            occurrenceComment: this.occurrenceComents[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 20,
          );
        },
      ),
    );
  }
}
