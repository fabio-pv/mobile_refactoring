import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/UserOccurrenceDetailScreen/InfoOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Avatar/AvatarWidget.dart';
import 'package:flutter/material.dart';

class UserOccurrenceDetailScreen extends StatelessWidget {
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
            size: 80,
          ),
          SizedBox(
            width: 20,
          ),
          InfoOccurrenceDetailScreen(),
        ],
      ),
    );
  }
}
