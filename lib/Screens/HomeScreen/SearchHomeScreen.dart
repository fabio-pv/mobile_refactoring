import 'package:flutter/material.dart';

class SearchHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 15,
      child: FloatingActionButton(
        onPressed: null,
        heroTag: null,
        mini: true,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.search,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
