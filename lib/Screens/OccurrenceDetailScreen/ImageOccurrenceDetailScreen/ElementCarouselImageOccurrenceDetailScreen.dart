import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class ElementCarouselImageOccurrenceDetailScreen extends StatelessWidget {
  final String url;

  ElementCarouselImageOccurrenceDetailScreen({this.url});

  @override
  Widget build(BuildContext context) {
    return CardDefaultOccurrenceDetailScreen(
      padding: 0,
      child: ImageWidget(
        url: this.url,
        width: CarouselImageOccurrenceDetailScreen.MAX_HEIGHT,
        height: CarouselImageOccurrenceDetailScreen.MAX_HEIGHT,
        borderRadius: 30,
      ),
    );
  }
}
