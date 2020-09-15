import 'package:flutter/material.dart';
import 'package:insound/controllers/app_controller.dart';
import 'pages/splash_screen.dart';
import 'pages/home/main_view.dart';
import 'pages/player/main_view.dart';
import 'package:insound/utils/themes.dart';

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
          title: 'Insound',
          debugShowCheckedModeBanner: false,
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: SplashScreen(),
          routes: {
            '/home': (context) => HomePage(),
            '/player': (context) => PlayerPage(),
          },
        );
      },
    );
  }
}
