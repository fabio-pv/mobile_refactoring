import 'package:fiscaliza_ja/Models/User.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class InfoOccurrenceDetailScreen extends StatelessWidget {
  final User user;

  InfoOccurrenceDetailScreen({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CardDefaultOccurrenceDetailScreen(
        child: Column(
          children: [
            Center(
              child: Text(
                this.user.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconText(
                  icon: Icons.thumb_up,
                  text: '666',
                ),
                IconText(
                  icon: Icons.favorite,
                  text: '999',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
