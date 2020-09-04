import 'package:flutter/foundation.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._();

  final isDark = ValueNotifier<bool>(true);

  turnToDark(bool value) {
    isDark.value = value;
  }
}
