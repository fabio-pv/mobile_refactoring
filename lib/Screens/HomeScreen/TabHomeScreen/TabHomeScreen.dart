import 'package:fiscaliza_ja/Screens/HomeScreen/TabHomeScreen/ListTabHomeScreen.dart';
import 'package:flutter/material.dart';

class TabHomeScreen extends StatelessWidget {
  final bool hiddenHeader;

  TabHomeScreen({@required this.hiddenHeader});

  @override
  Widget build(BuildContext context) {
    /*if (this.hiddenHeader == true) {
      return Container();
    }*/

    return AnimatedPositioned(
      width: MediaQuery.of(context).size.width,
      duration: Duration(milliseconds: 300),
      top: !this.hiddenHeader ? 80 : -80,
      left: 0,
      child: ListTabHomeScreen(),
    );
  }
}
