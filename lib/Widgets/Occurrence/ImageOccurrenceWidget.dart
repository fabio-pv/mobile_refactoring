import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fiscaliza_ja/Models/Occurrence.dart';

class ImageOccurrenceWidget extends StatefulWidget {
  final List<String> urls;

  ImageOccurrenceWidget({@required this.urls});

  @override
  _ImageOccurrenceWidgetState createState() => _ImageOccurrenceWidgetState();
}

class _ImageOccurrenceWidgetState extends State<ImageOccurrenceWidget> {
  int currentUrl = 0;

  @override
  void initState() {
    this._autoGallery();
    super.initState();
  }

  void _autoGallery() {
    if (widget.urls.length <= 1) {
      return;
    }

    Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentUrl >= (widget.urls.length - 1)) {
        setState(() {
          currentUrl = 0;
        });
        return;
      }

      print(currentUrl);
      print(widget.urls.length);

      setState(() {
        currentUrl++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: widget.urls[currentUrl],
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
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
