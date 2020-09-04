import 'package:flutter/material.dart';
import 'package:insound/controller/app.controller.dart';

class ToggleTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDark.value,
        onChanged: (value) {
          AppController.instance.turnToDark(value);
        });
  }
}
