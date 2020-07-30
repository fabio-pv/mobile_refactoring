import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ElementCarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class CarouselImageOccurrenceDetailScreen extends StatelessWidget {
  static const double MAX_HEIGHT = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MAX_HEIGHT,
      child: ListView(
        padding: EdgeInsets.only(
          left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          ElementCarouselImageOccurrenceDetailScreen(
            url:
                'https://wallup.net/wp-content/uploads/2016/01/28063-minimalism-Saturn-vectors-planet-space.jpg',
          ),
          ElementCarouselImageOccurrenceDetailScreen(
            url:
                'https://i.pinimg.com/736x/5b/05/0e/5b050eb394e369c6c262b8cc3cc2b816--uranus-astronomy.jpg',
          ),
          ElementCarouselImageOccurrenceDetailScreen(
            url: 'https://i.imgur.com/zaxLDmh.png',
          ),
          ElementCarouselImageOccurrenceDetailScreen(
            url: 'https://wallpaperaccess.com/full/2007313.jpg',
          ),
          ElementCarouselImageOccurrenceDetailScreen(
            url:
                'https://i.pinimg.com/736x/5b/05/0e/5b050eb394e369c6c262b8cc3cc2b816--uranus-astronomy.jpg',
          ),
        ],
      ),
    );
  }
}
