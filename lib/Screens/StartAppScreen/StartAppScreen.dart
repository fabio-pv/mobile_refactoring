import 'package:flutter/material.dart';

class StartAppScreen extends StatelessWidget {
  static const String route = 'start-app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
