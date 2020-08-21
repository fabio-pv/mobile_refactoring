import 'package:camera/camera.dart';
import 'package:fiscaliza_ja/Providers/CameraOpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Providers/OpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/GalleryFileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/TakePictureFileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/main.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
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
  BuildContext _contextAux;

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
      final appDocDir = await getApplicationDocumentsDirectory();

      final path = appDocDir.path + '/' + this._uuid.v4() + '.jpg';
      await this._controller.takePicture(path);
      this.files.add(path);
      this._updateFiles();
    } catch (e) {
      print('error _takePicture');
      print(e);
    }
  }

  void _removePicture({int index}) {
    this.files.removeAt(index);
    this._updateFiles();
  }

  void _updateFiles() {
    setState(() {
      this.files = this.files;
    });
    OpenOccurrenceScreenProvider.of(this._contextAux).doReturnFiles(
      files: this.files,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!this._controller.value.isInitialized) {
      return CircularProgressIndicator();
    }
    this._contextAux = context;
    return CameraOpenOccurrenceScreenProvider(
      doRemoveFile: this._removePicture,
      child: Stack(
        children: [
          CameraPreview(this._controller),
          Align(
            alignment: Alignment(-1.0, 0.95),
            child: GalleryFileOpenOccurrenceScreen(
              files: this.files,
            ),
          ),
          TakePictureFileOpenOccurrenceScreen(
            takePictureHandler: this._takePicture,
            files: this.files,
          ),
        ],
      ),
    );
  }
}
