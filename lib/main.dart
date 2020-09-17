import 'dart:io';

import 'package:fiscaliza_ja/Screens/HomeScreen/HomeScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/OccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';

List<CameraDescription> cameras;

void main() async {
  await DotEnv().load('.env');
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiscaliza Já',
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.blueAccent,
      ),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        OccurrenceDetailScreen.route: (context) => OccurrenceDetailScreen(uuid: null,),
      },
    );
  }
}
