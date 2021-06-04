import 'package:flutter/material.dart';

class AppTheme {
  static final ElevatedButtonThemeData elevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      padding: EdgeInsets.all(8),
      elevation: 8,
    ),
  );
  static final CardTheme cardTheme = CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 8,
      clipBehavior: Clip.antiAlias);
  static final Image logoImage = Image.asset(
    'assets/logoName.png',
    key: ValueKey('logoImage'),
  );
}
