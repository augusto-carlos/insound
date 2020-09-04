import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
            child: Icon(FeatherIcons.star, size: 50),
            padding: EdgeInsets.only(bottom: 20)),
        Text(
          'Nenhuma favorita',
          textScaleFactor: 1.5,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}
