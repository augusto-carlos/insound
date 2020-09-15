import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:insound/pages/home/widgets/theme_switch_widget.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      semanticLabel: 'Menu Lateral',
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF242731),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'Insound',
                  style: TextStyle(
                      fontFamily: 'OleoScript',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.primaries.first),
                ),
              ),
              padding: EdgeInsets.all(50),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Aplicativo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.sliders, color: Colors.grey),
                      title: Text(
                        'Equalizador',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.grid, color: Colors.grey),
                      title: Text('Layout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey,
                          )),
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.share2, color: Colors.grey),
                      title: Text('Partilhar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey,
                          )),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Definições',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  ListTile(
                    leading: Icon(FeatherIcons.settings, color: Colors.grey),
                    title: Text(
                      'Preferências',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(FeatherIcons.moon, color: Colors.grey),
                    title: Text('Tema Escuro',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                    trailing: ToggleTheme(),
                  ),
                  ListTile(
                    leading: Icon(FeatherIcons.info, color: Colors.grey),
                    title: Text('Acerca',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
