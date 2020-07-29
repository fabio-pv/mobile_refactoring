import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ElementCarouselImageOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class CarouselImageOccurrenceDetailScreen extends StatelessWidget {
  static const double MAX_HEIGHT = 90;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MAX_HEIGHT,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),
          ElementCarouselImageOccurrenceDetailScreen(),

        ],
      ),
    );
  }
}
