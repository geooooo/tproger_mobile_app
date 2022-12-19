import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:injectable/injectable.dart';

@singleton
class ColorService {
  Color parseHexColor(String hexColor) {
    hexColor = hexColor.substring(1);
    
    // RRGGBB - 6
    if (hexColor.length == 6) {
      return HexColor(hexColor);
    }

    // RGB - 3 Or RGBA - 4
    final r = hexColor[0] * 2;
    final g = hexColor[1] * 2;
    final b = hexColor[2] * 2;
    final alpha = (hexColor.length == 4)
      ? int.parse(hexColor[3] * 2, radix: 16)
      : 255;

    return HexColor('$r$g$b').withAlpha(alpha);
  }
}