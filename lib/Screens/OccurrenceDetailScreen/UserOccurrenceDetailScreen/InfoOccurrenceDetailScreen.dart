import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class InfoOccurrenceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CardDefaultOccurrenceDetailScreen(
        child: Column(
          children: [
            Text('Fabio pv'),
            SizedBox(height: 15,),
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
