import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color indigoA20011 = fromHex('#115a6cea');

  static Color greenA200 = fromHex('#53e78b');

  static Color gray80075 = fromHex('#753b3b3b');

  static Color gray100 = fromHex('#f4f4f4');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color deepPurple50 = fromHex('#ece5f0');

  static Color greenA700 = fromHex('#14be77');

  static Color bluegray600 = fromHex('#586f7c');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color black902 = fromHex('#000000');

  static Color black901 = fromHex('#09041b');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo600 = fromHex('#3c5a9a');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
