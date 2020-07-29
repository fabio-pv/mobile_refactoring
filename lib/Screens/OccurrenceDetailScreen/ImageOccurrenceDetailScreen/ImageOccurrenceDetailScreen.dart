import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class ImageOccurrenceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardDefaultOccurrenceDetailScreen(
          padding: 0,
          child: ImageWidget(
            url: 'https://wallpapercave.com/wp/wp5283743.jpg',
            height: 200,
          ),
        ),
        CarouselImageOccurrenceDetailScreen(),
      ],
    );
  }
}
