import 'package:flutter/material.dart';

class AppTheme {
  static final ElevatedButtonThemeData elevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      padding: EdgeInsets.symmetric(vertical: 16),
      elevation: 8,
    ),
  );
  static final Image logoImage = Image.asset('assets/logoName.png');
}
