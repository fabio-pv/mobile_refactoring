import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class ElementRowDescriptionOccurrenceScreen extends StatelessWidget {
  final Subsecretary subsecretary;

  ElementRowDescriptionOccurrenceScreen({
    @required this.subsecretary,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: ImageWidget(
            url: this.subsecretary.imagem,
            height: 100,
            width: 100,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          this.subsecretary.nome,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
