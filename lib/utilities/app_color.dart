import 'package:flutter/material.dart';
const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE2E2E2),
  100: Color(0xFFB6B6B7),
  200: Color(0xFF858687),
  300: Color(0xFF545557),
  400: Color(0xFF303033),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF0A0A0D),
  700: Color(0xFF08080B),
  800: Color(0xFF060608),
  900: Color(0xFF030304),
});
 const int _primaryPrimaryValue = 0xFF0B0C0F;

 const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFA6A6A6),
  200: Color(_primaryAccentValue),
  400: Color(0xFF737373),
  700: Color(0xFF666666),
});
 const int _primaryAccentValue = 0xFF8C8C8C;