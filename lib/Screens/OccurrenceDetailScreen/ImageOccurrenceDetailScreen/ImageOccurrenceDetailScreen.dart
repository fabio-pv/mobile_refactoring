import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ImageOccurrenceDetailScreen extends StatelessWidget {
  final Occurrence occurrence;

  ImageOccurrenceDetailScreen({@required this.occurrence});

  @override
  Widget build(BuildContext context) {
    if (this.occurrence.occurrenceFile == null) {
      return Container();
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
            right: ListOccurrenceDetailScreen.PADDING_DEFAULT,
          ),
          child: CardDefaultOccurrenceDetailScreen(
            padding: 0,
            child: ImageWidget(
              url: this.occurrence.getImagens()[0],
              height: 200,
            ),
          ),
        ),
        CarouselImageOccurrenceDetailScreen(
          files: this.occurrence.getImagens(),
        ),
      ],
    );
  }
}
