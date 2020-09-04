import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
            child: Icon(FeatherIcons.user, size: 50),
            padding: EdgeInsets.only(bottom: 20)),
        Text(
          'Nenhum artista',
          textScaleFactor: 1.5,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}
