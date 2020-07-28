import 'package:fiscaliza_ja/Screens/HomeScreen/ContentSearchHomeScreen.dart';
import 'package:flutter/material.dart';

class SearchHomeScreen extends StatefulWidget {
  final Function({
    int page,
    String keyword,
  }) load;

  SearchHomeScreen({@required this.load});

  @override
  _SearchHomeScreenState createState() => _SearchHomeScreenState();
}

class _SearchHomeScreenState extends State<SearchHomeScreen> {
  bool openSearch = false;
  TextEditingController searchTEC = new TextEditingController();

  void searchController() {
    if (searchTEC.text.isNotEmpty) {
      widget.load(
        keyword: searchTEC.text,
      );
      return;
    }

    setState(() {
      this.openSearch = !this.openSearch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: MediaQuery.of(context).size.width,
      top: 80,
      left: 15,
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: this.searchController,
            heroTag: null,
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
          ),
          ContentSearchHomeScreen(
            openSearch: this.openSearch,
            searchControllerHandler: this.searchController,
            searchTEC: this.searchTEC,
          ),
        ],
      ),
    );
  }
}
