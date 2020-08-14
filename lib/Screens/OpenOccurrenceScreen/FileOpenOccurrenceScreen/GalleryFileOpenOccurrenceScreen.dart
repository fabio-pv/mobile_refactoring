import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/ItemGalleryOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class GalleryFileOpenOccurrenceScreen extends StatelessWidget {
  final List<String> files;

  GalleryFileOpenOccurrenceScreen({@required this.files});

  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    if (this.files.length <= 0) {
      return Container();
    }

    return Container(
      height: 120,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20),
        itemCount: this.files.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ItemGalleryOpenOccurrenceScreen(
            path: this.files[index],
            index: index,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            width: 20,
          );
        },
      ),
    );
  }
}
