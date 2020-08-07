import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Providers/HomeScreenProvider.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ElementListTabHomeScreen extends StatelessWidget {
  final OccurrenceFilter occurrenceFilter;

  ElementListTabHomeScreen({@required this.occurrenceFilter});

  BuildContext contextAux;

  bool _isSelect() {
    final occurrenceFilter = HomeScreenProvider.of(contextAux).occurrenceFilter;

    if (occurrenceFilter == null) {
      return false;
    }

    return occurrenceFilter.uuid == this.occurrenceFilter.uuid;
  }

  @override
  Widget build(BuildContext context) {
    this.contextAux = context;
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        color: (this._isSelect() ? Theme.of(context).accentColor : null),
        elevation: 3,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: InkWell(
          onTap: () {
            HomeScreenProvider.of(context).doFilter(
              occurrenceFilter: this.occurrenceFilter,
            );
          },
          borderRadius: BorderRadius.circular(GenericPattern.BORDER_RADIUS),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: IconText(
              icon: MdiIcons.fromString(this.occurrenceFilter.icon),
              text: this.occurrenceFilter.name,
              color: (this._isSelect() ? Colors.white : null),
            ),
          ),
        ),
      ),
    );
  }
}
