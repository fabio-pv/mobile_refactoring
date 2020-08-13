import 'package:camera/camera.dart';
import 'package:fiscaliza_ja/main.dart';
import 'package:flutter/material.dart';

class OpenOccurrenceScreen extends StatefulWidget {
  @override
  _OpenOccurrenceScreenState createState() => _OpenOccurrenceScreenState();
}

class _OpenOccurrenceScreenState extends State<OpenOccurrenceScreen> {
  CameraController controller;

  @override
  void initState() {
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }

    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
    return Container();
  }
}
