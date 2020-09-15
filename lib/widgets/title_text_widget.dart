import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;
  TitleTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
