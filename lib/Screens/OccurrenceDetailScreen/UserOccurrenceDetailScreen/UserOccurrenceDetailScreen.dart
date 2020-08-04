import 'package:fiscaliza_ja/Models/User.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/UserOccurrenceDetailScreen/AnonymousOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/UserOccurrenceDetailScreen/InfoOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Avatar/AvatarWidget.dart';
import 'package:flutter/material.dart';

class UserOccurrenceDetailScreen extends StatelessWidget {
  final User user;

  UserOccurrenceDetailScreen({@required this.user});

  @override
  Widget build(BuildContext context) {
    if (this.user == null) {
      return AnonymousOccurrenceDetailScreen();
    }

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
            name: this.user.name,
            url: this.user.foto,
          ),
          SizedBox(
            width: 20,
          ),
          InfoOccurrenceDetailScreen(
            user: this.user,
          ),
        ],
      ),
    );
  }
}
