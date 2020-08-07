import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/OpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class OpenOccurrenceHomeScreen extends StatelessWidget {
  final bool headerHidden;

  OpenOccurrenceHomeScreen({@required this.headerHidden});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: 20,
      right: !this.headerHidden ? 20 : -200,
      duration: Duration(milliseconds: 200),
      child: FloatingActionButton.extended(
        elevation: 5,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  OpenOccurrenceScreen(),
            ),
          );
        },
        label: Text('Criar Ocorrencia'),
        icon: Icon(Icons.record_voice_over),
      ),
    );
  }
}
