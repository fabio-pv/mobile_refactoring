import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/FullScreenImageScreen/FullScreenImageScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ImageOccurrenceDetailScreen/ElementCarouselImageOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final double borderRadius;
  final bool fullScreen;

  ImageWidget({
    @required this.url,
    this.width,
    @required this.height,
    this.borderRadius,
    this.fullScreen = false,
  });

  BuildContext contextAux;

  Widget fullScreenWidget() {
    if (this.fullScreen == false) {
      return Container();
    }

    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: () {
          Navigator.push(
            this.contextAux,
            MaterialPageRoute(
              builder: (BuildContext context) => FullScreenImageScreen(
                url: this.url,
              ),
            ),
          );
        },
        icon: Icon(
          Icons.fullscreen,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.contextAux = context;
    return CachedNetworkImage(
      imageUrl: this.url,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      imageBuilder: (context, imageProvider) => Container(
        width: this.width ?? double.maxFinite,
        height: this.height,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
            this.borderRadius ?? GenericPattern.BORDER_RADIUS,
          ),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: this.fullScreenWidget(),
      ),
    );
  }
}
