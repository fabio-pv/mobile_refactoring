import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final double borderRadius;

  ImageWidget({
    @required this.url,
    this.width,
    @required this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
