import 'package:flutter/material.dart';

class AppTheme {
  static final AppTheme instance = AppTheme._();
  AppTheme._();

  ThemeData theme() {
    return ThemeData(
      primarySwatch: Colors.red,
      iconTheme: IconThemeData(color: Colors.grey),
      textTheme: Typography.blackHelsinki,
      scaffoldBackgroundColor: Color(0xFFF7F7F7),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        textTheme: Typography.blackHelsinki,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: Colors.primaries.first,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Color(0xFF1a1d25),
      dividerColor: Colors.white10,
      textTheme: Typography.whiteHelsinki,
      dialogTheme: DialogTheme(
        backgroundColor: Color(0xFF1a1d25),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: Color(0xFF242731),
      ),
      iconTheme: IconThemeData(color: Colors.grey),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        color: Colors.transparent,
        textTheme: Typography.whiteHelsinki,
      ),
    );
  }
}
