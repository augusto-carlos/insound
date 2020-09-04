import 'package:flutter/material.dart';
import 'package:insound/controller/app.controller.dart';
import 'pages/home/main.view.dart';
import 'pages/player/main.view.dart';
import 'pages/settings/main.view.dart';
import 'package:insound/themes/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppController.instance.isDark,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'inSound',
          debugShowCheckedModeBanner: false,
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.instance.theme(),
          darkTheme: AppTheme.instance.darkTheme(),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/player': (context) => PlayerPage(),
            '/settings': (context) => SettingsPage(),
          },
        );
      },
    );
  }
}
