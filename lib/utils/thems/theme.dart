import 'package:ecomme/utils/thems/constans_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TtextTheme.lightTextThem,
    elevatedButtonTheme: ElevatedButtonThemeData(
      
    ),
  );
  static ThemeData DarkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: TtextTheme.darkTextThem,
  );
}
