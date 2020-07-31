import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ElementCarouselImageOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class CarouselImageOccurrenceDetailScreen extends StatelessWidget {
  static const double MAX_HEIGHT = 80;

  final List<String> files;
  final Function({String url}) changeBigImageHandler;

  CarouselImageOccurrenceDetailScreen({
    @required this.files,
    @required this.changeBigImageHandler,
  });

  @override
  Widget build(BuildContext context) {
    if (this.files.length <= 1) {
      return Container();
    }
    return Container(
      height: MAX_HEIGHT,
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: this.files.length,
        itemBuilder: (BuildContext context, int index) {
          return ElementCarouselImageOccurrenceDetailScreen(
            url: this.files[index],
            onTap: (String url) {
              this.changeBigImageHandler(
                url: url,
              );
            },
          );
        },
      ),
    );
  }
}
