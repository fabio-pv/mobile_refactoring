import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ImageOccurrenceDetailScreen extends StatefulWidget {
  final Occurrence occurrence;

  ImageOccurrenceDetailScreen({@required this.occurrence});

  @override
  _ImageOccurrenceDetailScreenState createState() =>
      _ImageOccurrenceDetailScreenState();
}

class _ImageOccurrenceDetailScreenState
    extends State<ImageOccurrenceDetailScreen> {
  String _urlSelect;

  void changeBigImage({String url}) {
    setState(() {
      this._urlSelect = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (this.widget.occurrence.occurrenceFile == null) {
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
              url: this._urlSelect ?? this.widget.occurrence.getImagens()[0],
              height: 200,
              fullScreen: true,
            ),
          ),
        ),
        CarouselImageOccurrenceDetailScreen(
          files: this.widget.occurrence.getImagens(),
          changeBigImageHandler: this.changeBigImage,
        ),
      ],
    );
  }
}
