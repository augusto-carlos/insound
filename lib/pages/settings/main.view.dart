import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:insound/components/toggleTheme.component.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Definições'),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
      ),
      body: ListView(children: [
        ListTile(
          title: Text('Tema escuro', textScaleFactor: 1),
          leading: Icon(
            FeatherIcons.moon,
            color: Colors.grey,
          ),
          trailing: ToggleTheme(),
        ),
      ]),
    );
  }
}
