import 'package:fiscaliza_ja/Models/OccurrenceComment.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/CommentOccurrenceDetailScreen/ListCommentOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/TitleCarDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class CommentOccurrenceDetailScreen extends StatelessWidget {
  List<OccurrenceComment> occurrenceComments;

  CommentOccurrenceDetailScreen({@required this.occurrenceComments});

  @override
  Widget build(BuildContext context) {
    if(this.occurrenceComments == null){
      return Container();
    }

    return Padding(
      padding: EdgeInsets.all(ListOccurrenceDetailScreen.PADDING_DEFAULT),
      child: CardDefaultOccurrenceDetailScreen(
        child: Column(
          children: [
            TitleCarDefaultOccurrenceDetailScreen(
              title: 'Comentario da secretaria',
            ),
            SizedBox(
              height: 10,
            ),
            ListCommentOccurrenceDetailScreen(
              occurrenceComents: this.occurrenceComments,
            ),
          ],
        ),
      ),
    );
  }
}
