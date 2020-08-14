import 'package:flutter/material.dart';

class TakePictureFileOpenOccurrenceScreen extends StatelessWidget {
  final Function takePictureHandler;
  final List<String> files;

  TakePictureFileOpenOccurrenceScreen({
    @required this.takePictureHandler,
    @required this.files,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      width: MediaQuery.of(context).size.width,
      duration: Duration(milliseconds: 300),
      bottom: this.files.length <= 0 ? 30 : 160,
      child: FloatingActionButton(
        heroTag: null,
        onPressed: this.takePictureHandler,
        child: Icon(Icons.camera),
      ),
    );
  }
}
