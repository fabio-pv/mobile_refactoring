import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/CarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class ElementCarouselImageOccurrenceDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CardDefaultOccurrenceDetailScreen(
      padding: 0,
      child: ImageWidget(
        url:
            'https://lh3.googleusercontent.com/proxy/N6JVM_kqZ_lPIw50Jl3fa64gho4zqDThpKUHCGfXGiGUi6UwdO1-e0-wHTj6dXA84LEhTKrzupjP6iIjNDgtTqzWXpKa0IwpHJ_CrC3gi8cAEl9alwOgieoUhxeYtNv4POt9VO-2v2wTNLdSAM_Rxk80y8NW',
        width: CarouselImageOccurrenceDetailScreen.MAX_HEIGHT,
        height: CarouselImageOccurrenceDetailScreen.MAX_HEIGHT,
      ),
    );
  }
}
