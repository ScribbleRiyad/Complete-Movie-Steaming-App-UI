import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#6dd177');

  static Color blueGray9006c = fromHex('#6c28263e');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black90001 = fromHex('#1b1302');

  static Color gray3008d = fromHex('#8ddedede');

  static Color black90000 = fromHex('#001b1201');

  static Color amberA700 = fromHex('#ffad09');

  static Color whiteA700Ab = fromHex('#abffffff');

  static Color blueGray90002 = fromHex('#262530');

  static Color blueGray90001 = fromHex('#262531');

  static Color blueGray900 = fromHex('#252334');

  static Color black90002 = fromHex('#000000');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color gray400 = fromHex('#bdbdc4');

  static Color black9000001 = fromHex('#00000000');

  static Color blueGray100 = fromHex('#cbc9d8');

  static Color deepPurpleA7000c = fromHex('#0c1e00ff');

  static Color blueGray300 = fromHex('#9592b1');

  static Color amber300 = fromHex('#ffcb49');

  static Color whiteA70063 = fromHex('#63ffffff');

  static Color black90099 = fromHex('#9906041f');

  static Color blueGray100A2 = fromHex('#a2cbc9d8');

  static Color gray500Ab = fromHex('#aba5a4b1');

  static Color black90019 = fromHex('#19100f0f');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7005e = fromHex('#5effffff');

  static Color red700 = fromHex('#de0b30');

  static Color blueGray10001 = fromHex('#cecdd8');

  static Color blueGray10002 = fromHex('#ceccd7');

  static Color blueGray10003 = fromHex('#cac9d7');

  static Color blueGray10004 = fromHex('#c8e1e9');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color black900 = fromHex('#06041f');

  static Color blueGray800 = fromHex('#353449');

  static Color deepOrange400 = fromHex('#ff7b51');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color gray500 = fromHex('#a5a4b1');

  static Color blueGray400 = fromHex('#8b899e');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color indigo50 = fromHex('#e8e6ff');

  static Color gray900 = fromHex('#1f1d35');

  static Color blueGray90003 = fromHex('#25233b');

  static Color blueGray80001 = fromHex('#38364c');

  static Color blueGray30001 = fromHex('#9491b1');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color indigo100 = fromHex('#cbc9e3');

  static Color blue400 = fromHex('#499be9');

  static Color gray90090 = fromHex('#901f1d35');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
