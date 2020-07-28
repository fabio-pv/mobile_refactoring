import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class ContentSearchHomeScreen extends StatelessWidget {
  final bool openSearch;
  final Function() searchControllerHandler;
  final TextEditingController searchTEC;

  ContentSearchHomeScreen({
    @required this.openSearch,
    @required this.searchControllerHandler,
    @required this.searchTEC,
  });

  @override
  Widget build(BuildContext context) {
    if (this.openSearch == false) {
      return Container();
    }

    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 25),
        child: Card(
          elevation: 3,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: this.searchTEC,
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Busque por palavras chaves',
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 20,
                  icon: Icon(Icons.filter_list),
                  onPressed: this.searchControllerHandler,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
