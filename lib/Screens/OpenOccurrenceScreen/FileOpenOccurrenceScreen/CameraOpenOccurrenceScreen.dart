import 'package:camera/camera.dart';
import 'package:fiscaliza_ja/main.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CameraOpenOccurrenceScreen extends StatefulWidget {
  @override
  _CameraOpenOccurrenceScreenState createState() =>
      _CameraOpenOccurrenceScreenState();
}

class _CameraOpenOccurrenceScreenState
    extends State<CameraOpenOccurrenceScreen> {
  CameraController _controller;
  Uuid _uuid;
  List<String> files = [];

  _CameraOpenOccurrenceScreenState() {
    this._uuid = new Uuid();
  }

  @override
  void initState() {
    super.initState();
    this._controller = CameraController(
      cameras.first,
      ResolutionPreset.ultraHigh,
    );
    this._controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    this._controller?.dispose();
    super.dispose();
  }

  void _takePicture() async {
    try {
      final path = appDocDir.path + '/' + this._uuid.v4() + '.jpg';
      await this._controller.takePicture(path);
      this.files.add(path);
      print(this.files);
    } catch (e) {
      print('error _takePicture');
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!this._controller.value.isInitialized) {
      return CircularProgressIndicator();
    }

    return Stack(
      children: [
        CameraPreview(this._controller),
        Align(
          alignment: Alignment(0.0, 0.9),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: this._takePicture,
            child: Icon(Icons.camera),
          ),
        )
      ],
    );
  }
}
