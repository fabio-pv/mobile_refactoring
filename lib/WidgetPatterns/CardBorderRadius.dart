import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/cupertino.dart';

class CardBorderRadius {
  static RoundedRectangleBorder pattern() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(GenericPattern.BORDER_RADIUS),
    );
  }
}
