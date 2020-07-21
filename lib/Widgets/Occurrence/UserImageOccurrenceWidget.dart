import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiscaliza_ja/Models/User.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class UserImageOccurrenceWidget extends StatelessWidget {
  final User user;

  UserImageOccurrenceWidget({@required this.user});

  @override
  Widget build(BuildContext context) {
    if (this.user == null) {
      return Positioned(
        right: 0,
        top: 0,
        child: Card(
          elevation: 4,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.remove_red_eye,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    if (this.user.foto == null) {
      return Positioned(
        right: 0,
        top: 0,
        child: Card(
          elevation: 4,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.face,
            ),
          ),
        ),
      );
    }

    return Positioned(
      right: 0,
      top: 0,
      child: CachedNetworkImage(
        imageUrl: this.user.foto,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
        imageBuilder: (context, imageProvider) => Card(
          elevation: 4,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
