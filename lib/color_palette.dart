import 'package:flutter/material.dart';
/* Color Palette 1: https://coolors.co/8d6a9f-c5cbd3-8cbcb9-dda448-bb342f
  background: Color(0xFFC5CBD3)
  appbar: Color(0xFF8CBCB9)
  confidence: Color(0xB0BB342F)
  philosophical: Color(0xB0DDA448)
  default: Color(0xB08D6A9F)
  */

/* Color Palette 2: https://coolors.co/eff9f0-ddc8c4-896a67-6b4d57-13070c
  */

Color mint() {
  return Color.fromARGB(255, 218, 229, 218);
}

Color dogwood(String? strength) {
  switch (strength) {
    case 'light':
      return Color(0xFFDDC8C4);
    case 'ultralight':
      return Color.fromARGB(255, 233, 223, 221);
    case 'dark':
      return Color(0xFFAD7C71);
    default:
      return Color(0xFFD2B7B1);
  }
}

Color roseTaupe() {
  return Color(0xFF896A67);
}

Color eggplant() {
  return Color.fromARGB(255, 185, 152, 163);
}

Color licorice() {
  return Color(0xFF13070C);
}
