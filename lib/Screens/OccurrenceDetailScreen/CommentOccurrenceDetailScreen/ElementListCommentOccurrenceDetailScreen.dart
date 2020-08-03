import 'package:fiscaliza_ja/Models/OccurrenceComment.dart';
import 'package:fiscaliza_ja/Utils/DateUtil.dart';
import 'package:flutter/material.dart';

class ElementListCommentOccurrenceDetailScreen extends StatelessWidget {
  final OccurrenceComment occurrenceComment;

  ElementListCommentOccurrenceDetailScreen({@required this.occurrenceComment});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.occurrenceComment.texto,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              DateUtil(dateRaw: this.occurrenceComment.createdAt).toDateTime(),
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ],
      ),
    );
  }
}
