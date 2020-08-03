import 'package:fiscaliza_ja/Models/OccurrenceAction.dart';
import 'package:flutter/material.dart';

class ElementActionPublicOccurrenceDetail extends StatelessWidget {
  final OccurrenceAction occurrenceAction;

  ElementActionPublicOccurrenceDetail({@required this.occurrenceAction});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Checkbox(
            value: (this.occurrenceAction.concluido == 1 ? true : false),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (bool newValue) {},
          ),
          Expanded(
              flex: 1,
              child: Text(
                this.occurrenceAction.action.nome,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyText2,
              )),
        ],
      ),
    );
  }
}
