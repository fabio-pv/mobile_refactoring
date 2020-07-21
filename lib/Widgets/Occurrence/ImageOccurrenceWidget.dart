import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiscaliza_ja/Models/User.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/ImageElementOccurrenceWidget.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/UserImageOccurrenceWidget.dart';
import 'package:flutter/material.dart';
import 'package:fiscaliza_ja/Models/Occurrence.dart';

class ImageOccurrenceWidget extends StatefulWidget {
  final List<String> urls;
  final User user;

  ImageOccurrenceWidget({
    @required this.urls,
    @required this.user,
  });

  @override
  _ImageOccurrenceWidgetState createState() => _ImageOccurrenceWidgetState();
}

class _ImageOccurrenceWidgetState extends State<ImageOccurrenceWidget> {
  int _currentUrl = 0;
  Timer _timer;

  @override
  void initState() {
    this._autoGallery();
    super.initState();
  }

  @override
  void dispose() {
    if (this._timer != null) {
      this._timer.cancel();
    }
    super.dispose();
  }

  void _autoGallery() {
    if (widget.urls.length <= 1) {
      return;
    }

    this._timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_currentUrl >= (widget.urls.length - 1)) {
        setState(() {
          _currentUrl = 0;
        });
        return;
      }

      setState(() {
        _currentUrl++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            ImageElementOccurrenceWidget(
              url: widget.urls[this._currentUrl],
              placeholder: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(width: 15),
          ],
        ),
        UserImageOccurrenceWidget(
          user: widget.user,
        ),
      ],
    );
  }
}
