import 'package:fiscaliza_ja/Widgets/HeaderOccurrenceDetail/HeaderOccurrenceDetail.dart';
import 'package:flutter/material.dart';

class OccurrenceDetailScreen extends StatelessWidget {
  static const route = 'occurrence-detail';

  final String uuid;

  OccurrenceDetailScreen({@required this.uuid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /*ListView(
              children: List.generate(20, (index) {
                return Container(
                  height: 20,
                  color: Colors.amberAccent,
                  margin: EdgeInsets.only(bottom: 20),
                );
              }),
            ),*/
            HeaderOccurrenceDetail(),
          ],
        ),
      ),
    );
  }
}
