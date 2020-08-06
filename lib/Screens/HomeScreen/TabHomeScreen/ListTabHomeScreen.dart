import 'package:fiscaliza_ja/Screens/HomeScreen/TabHomeScreen/ElementListTabHomeScreen.dart';
import 'package:flutter/material.dart';

class ListTabHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        children: [
          ElementListTabHomeScreen(
            name: 'Meu Bairro',
            icon: Icons.my_location,
          ),
          ElementListTabHomeScreen(
            name: 'Ultimas ocorrencias',
            icon: Icons.new_releases,
          ),
          ElementListTabHomeScreen(
            name: 'Ultimas Atendidas',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
