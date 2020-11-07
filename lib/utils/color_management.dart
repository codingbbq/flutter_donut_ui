import 'package:flutter/material.dart';

class ColorManager {
  //https://stackoverflow.com/questions/58360989/programmatically-lighten-or-darken-a-hex-color-in-dart

  static Color darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  // https://stackoverflow.com/a/61995168
  static Color hexToColor(String code) {
    return new Color(int.parse(code, radix: 16) + 0xFF000000);
  }
}

// This is a utility Class. I wanted to separate out the code to a different file. To be able to
// user this methods inside the class, we need to make the methods static.
