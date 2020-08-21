import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: this.takePictureHandler,
            child: Icon(Icons.camera),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: null,
            mini: true,
            onPressed: () {
              print('other action');
            },
            child: Icon(Icons.collections),
          )
        ],
      ),
    );
  }
}
