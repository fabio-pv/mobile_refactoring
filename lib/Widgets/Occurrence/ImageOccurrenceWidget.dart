import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageOccurrenceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
      'https://i.pinimg.com/236x/32/db/b3/32dbb326229a1fdf08f88b0b6a6277d4.jpg',
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      imageBuilder: (context, imageProvider) => Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
