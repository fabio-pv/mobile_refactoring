import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class GroupCategoryOccurrenceScreen extends StatelessWidget {
  final Group group;

  GroupCategoryOccurrenceScreen({@required this.group});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: ImageWidget(
          url: this.group.imagem,
          height: 200,
        ),
      ),
    );
  }
}
