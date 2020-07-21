import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageElementOccurrenceWidget extends StatelessWidget {
  final String url;
  Widget placeholder;

  ImageElementOccurrenceWidget({
    @required this.url,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    if (this.placeholder == null) {
      this.placeholder = CircularProgressIndicator();
    }
    return CachedNetworkImage(
      imageUrl: this.url,
      placeholder: (context, url) => this.placeholder,
      errorWidget: (context, url, error) => Icon(Icons.error),
      imageBuilder: (context, imageProvider) => Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey[200],
        ),
        child: Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
