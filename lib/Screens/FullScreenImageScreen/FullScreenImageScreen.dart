import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenImageScreen extends StatelessWidget {
  final String url;

  FullScreenImageScreen({@required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PhotoView(
          customSize: MediaQuery.of(context).size,
          imageProvider: CachedNetworkImageProvider(this.url),
          minScale: PhotoViewComputedScale.contained,
        ),
      ),
    );
  }
}
