import 'package:fiscaliza_ja/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiscaliza Já',
      initialRoute: HomeScreen.route,
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.green,
      ),
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
      },
    );
  }
}
