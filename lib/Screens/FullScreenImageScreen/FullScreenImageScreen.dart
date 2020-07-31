import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class FullScreenImageScreen extends StatelessWidget {
  final String url;

  FullScreenImageScreen({@required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageWidget(
        url: this.url,
        height: MediaQuery.of(context).size.height,
        borderRadius: 0,
      ),
    );
  }
}
