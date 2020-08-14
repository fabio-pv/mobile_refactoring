import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
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
    return Card(
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
    );
  }
}
