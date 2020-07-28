import 'package:fiscaliza_ja/Widgets/HeaderMenu/ElementHeaderMenu.dart';
import 'package:flutter/material.dart';

class ContentElementHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: GridView.count(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 3,
        children: [
          ElementHeaderMenu(
            icon: Icons.home,
            name: 'Home',
          ),
          ElementHeaderMenu(
            icon: Icons.format_list_bulleted,
            name: 'Example',
          ),
          ElementHeaderMenu(
            icon: Icons.home,
            name: 'Example',
          ),
          ElementHeaderMenu(
            icon: Icons.map,
            name: 'Example',
          ),
        ],
      ),
    );
  }
}
