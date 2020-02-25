
import 'dart:ui';

import 'package:flutter/cupertino.dart';

enum Keys {
  variable1,
  variable2,
  variable3,
  variable4,
  clear,
  sign,
  brackets,
  divide,
  multiply,
  subtract,
  add,
  equals,
  decimal,
  backspace,

  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine

}



class KeysHelper {

  static List<List<Keys>> get contents {
    return [
      [Keys.variable1, Keys.variable2, Keys.variable3, Keys.variable4],
      [Keys.clear, Keys.divide, Keys.multiply, Keys.backspace],
      [Keys.seven, Keys.eight, Keys.nine, Keys.subtract],
      [Keys.four, Keys.five, Keys.six, Keys.add],
      [Keys.one, Keys.two, Keys.three, Keys.brackets],
      [Keys.zero, Keys.decimal, Keys.sign, Keys.equals],
    ];
  }

  static String title(Keys type) {
    switch (type) {
      case Keys.variable1:  return 'V1';
      case Keys.variable2:  return 'V2';
      case Keys.variable3:  return 'V3';
      case Keys.variable4:  return 'V4';
      case Keys.clear:      return 'C';
      case Keys.sign:       return '+/-';
      case Keys.brackets:   return '( )';
      case Keys.divide:     return '÷';
      case Keys.multiply:   return 'x';
      case Keys.subtract:   return '-';
      case Keys.add:        return '+';
      case Keys.equals:     return '=';
      case Keys.decimal:    return '.';

      case Keys.backspace:  return '←';

      case Keys.zero:       return '0';
      case Keys.one:        return '1';
      case Keys.two:        return '2';
      case Keys.three:      return '3';
      case Keys.four:       return '4';
      case Keys.five:       return '5';
      case Keys.six:        return '6';
      case Keys.seven:      return '7';
      case Keys.eight:      return '8';
      case Keys.nine:       return '9';
    }
  }


  static Color bgColor(Keys type){
    switch (type) {
      case Keys.brackets:
      case Keys.subtract:   return Color(0xBFA09595);

      case Keys.add:
      case Keys.backspace:  return Color(0x99A79494);


      case Keys.equals:     return Color(0xFF978D8C);

      case Keys.one:
      case Keys.two:
      case Keys.three:
      case Keys.seven:
      case Keys.eight:
      case Keys.nine:       return Color(0xFFECE5DF);

      case Keys.clear:
      case Keys.divide:
      case Keys.multiply:
      case Keys.zero:
      case Keys.four:
      case Keys.five:
      case Keys.six:
      case Keys.sign:
      case Keys.decimal:    return Color(0xFFF3EAE3);
      default:              return Color(0xFFCED4E2);

    }
  }


  static Color textColor(Keys type) {
    switch (type) {
      case Keys.brackets:
      case Keys.subtract:   return Color(0xFFF4EBE5);

      case Keys.add:
      case Keys.backspace:  return Color(0xFFF4EBE5);


      case Keys.equals:     return Color(0xFFF4EBE5);

      case Keys.one:
      case Keys.two:
      case Keys.three:
      case Keys.seven:
      case Keys.eight:
      case Keys.nine:       return Color(0x3D000000);

      case Keys.clear:
      case Keys.divide:
      case Keys.multiply:
      case Keys.zero:
      case Keys.four:
      case Keys.five:
      case Keys.six:
      case Keys.sign:
      case Keys.decimal:    return Color(0x3D000000);

      default:              return Color(0x3D000000);
    }
  }

}