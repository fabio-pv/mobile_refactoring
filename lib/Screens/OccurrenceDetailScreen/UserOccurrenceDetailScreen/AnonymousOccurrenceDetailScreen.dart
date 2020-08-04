import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Avatar/AvatarWidget.dart';
import 'package:flutter/material.dart';

class AnonymousOccurrenceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
        right: ListOccurrenceDetailScreen.PADDING_DEFAULT,
      ),
      child: Row(
        children: [
          AvatarWidget(
            size: 70,
            elevation: 3,
            anonymous: true,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 1,
            child: CardDefaultOccurrenceDetailScreen(
              color: Colors.grey[800],
              child: Container(
                height: 35,
                child: Center(
                  child: Text(
                    'Ocorrencia anonima',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
