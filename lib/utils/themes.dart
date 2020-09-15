import 'package:flutter/material.dart';

enum CurrentTheme { dark, light }

final ThemeData lightTheme = new ThemeData(
  primarySwatch: Colors.red,
  iconTheme: IconThemeData(color: Colors.grey),
  textTheme: Typography.blackHelsinki.apply(
    fontFamily: 'Muli',
  ),
  bottomAppBarColor: Colors.white,
  indicatorColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Colors.transparent,
    textTheme: Typography.blackHelsinki,
    iconTheme: IconThemeData(color: Colors.grey),
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Colors.grey,
    labelColor: Colors.black87,
  ),
);

final ThemeData darkTheme = new ThemeData(
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: Color(0xFF1a1d25),
  dividerColor: Colors.white10,
  indicatorColor: Colors.transparent,
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
  textTheme: Typography.whiteHelsinki.apply(
    fontFamily: 'Muli',
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Color(0xFF242731),
  ),
  popupMenuTheme: PopupMenuThemeData(
    color: Color(0xFF242731),
  ),
  iconTheme: IconThemeData(color: Colors.grey),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Colors.grey,
    labelColor: Colors.primaries.first,
  ),
  bottomAppBarColor: Color(0x55242731),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.grey),
    elevation: 0,
    color: Colors.transparent,
    textTheme: Typography.whiteHelsinki,
  ),
);
