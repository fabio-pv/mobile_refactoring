import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Providers/CameraOpenOccurrenceScreenProvider.dart';
import 'package:flutter/material.dart';

class ItemGalleryOpenOccurrenceScreen extends StatelessWidget {
  final String path;
  final int index;

  ItemGalleryOpenOccurrenceScreen({
    @required this.path,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 5,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: Container(
            height: 120,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(GenericPattern.BORDER_RADIUS),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(this.path),
              ),
            ),
          ),
        ),
        Container(
          width: 120,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: SizedBox(
                width: 35,
                height: 35,
                child: IconButton(
                  iconSize: 18,
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    CameraOpenOccurrenceScreenProvider.of(context)
                        .doRemoveFile(index: this.index);
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
