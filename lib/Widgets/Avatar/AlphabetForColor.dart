import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlphabetForColor {
  static const accentValue = 700;

  static Map<String, Color> colors = <String, Color>{
    'A': Colors.redAccent[accentValue],
    'B': Colors.pinkAccent[accentValue],
    'C': Colors.purpleAccent[accentValue],
    'D': Colors.deepPurpleAccent[accentValue],
    'E': Colors.indigoAccent[accentValue],
    'F': Colors.blueAccent[accentValue],
    'G': Colors.lightBlueAccent[accentValue],
    'H': Colors.cyanAccent[accentValue],
    'I': Colors.tealAccent[accentValue],
    'J': Colors.greenAccent[accentValue],
    'K': Colors.lightGreenAccent[accentValue],
    'L': Colors.limeAccent[accentValue],
    'M': Colors.yellowAccent[accentValue],
    'N': Colors.amberAccent[accentValue],
    'O': Colors.orangeAccent[accentValue],
    'P': Colors.deepOrangeAccent[accentValue],
    'Q': Colors.brown[accentValue],
    'R': Colors.grey[accentValue],
    'S': Colors.orange[500],
    'T': Colors.blueGrey[700],
    'U': Colors.lime[900],
    'V': Colors.lightGreen[700],
    'W': Colors.green[600],
    'X': Colors.teal[500],
    'Y': Colors.cyan[700],
    'Z': Colors.blue[800],
  };

  static getColor({String title}) {
    if (title == null) {
      return Colors.grey[900];
    }

    final firstChar = title.substring(0, 1).toUpperCase();

    return colors[firstChar];
  }
}
