import 'package:flutter/material.dart';

class GenericPattern {
  static const double BORDER_RADIUS = 35;
  static RoundedRectangleBorder CARD_BORDER_RADIUS = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(GenericPattern.BORDER_RADIUS),
  );
  static RoundedRectangleBorder CARD_BORDER_RADIUS_HIGHT =
      RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(500),
  );
  static RoundedRectangleBorder CARD_BORDER_RADIUS_TOP = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(BORDER_RADIUS),
      topRight: Radius.circular(BORDER_RADIUS),
    ),
  );
}
