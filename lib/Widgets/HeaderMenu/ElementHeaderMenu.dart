import 'package:flutter/material.dart';

class ElementHeaderMenu extends StatelessWidget {
  final IconData icon;
  final String name;

  ElementHeaderMenu({
    @required this.icon,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          print('ElementHeaderMenu');
        },
        child: Column(
          children: [
            Icon(
              this.icon,
              size: 40,
              color: Colors.grey[900],
            ),
            Text(
              this.name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
