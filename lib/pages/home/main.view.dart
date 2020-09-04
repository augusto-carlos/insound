import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:insound/models/music.model.dart';

import 'package:insound/pages/home/tabs/musics.view.dart';
import 'package:insound/pages/home/tabs/favorites.view.dart';
import 'package:insound/pages/home/tabs/artists.view.dart';
import 'package:insound/pages/home/tabs/Albums.view.dart';

// tabs

final List<Tab> tabs = <Tab>[
  Tab(text: 'Todas'),
  Tab(text: 'Artistas'),
  Tab(text: 'Álbums'),
  Tab(text: 'Favoritos'),
];

var musicsTabView = Musics(musics: [
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
  Music(title: 'Good years', artist: 'Zayn', duraction: 28, favorited: true),
  Music(title: 'A change is gonna come', artist: 'Sam Cooke', duraction: 46),
  Music(title: 'Georgia on my mind', artist: 'Ray Charles', duraction: 60),
]);

final favoritesTabView = Favorites();
final artistsTabView = Artists();
final albumsTabView = Albums();

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (BuildContext context) {
          var scaffold = Scaffold(
            appBar: AppBar(
              title: Text('Músicas'),
              centerTitle: true,
              automaticallyImplyLeading: true,
              bottom: TabBar(
                tabs: tabs,
              ),
              actions: <Widget>[
                PopupMenuButton(
                  onSelected: (Widget result) {
                    setState(() {});
                  },
                  padding: EdgeInsets.only(right: 20),
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<Widget>>[
                    PopupMenuItem<Widget>(child: Text('Buscar')),
                    PopupMenuItem<Widget>(child: Text('Actualizar')),
                    PopupMenuItem<Widget>(child: Text('Ordem')),
                  ],
                ),
              ],
            ),
            drawer: Drawer(
              elevation: 10,
              semanticLabel: 'Menu Lateral',
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1a1d25),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.transparent.withAlpha(50),
                      ),
                      child: Center(
                        child: Text('Painel Lateral',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.sliders, color: Colors.grey),
                      title: Text('Equalizador',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.settings, color: Colors.grey),
                      title: Text('Definições',
                          style: TextStyle(color: Colors.grey)),
                      onTap: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.info, color: Colors.grey),
                      title:
                          Text('Acerca', style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(children: <Widget>[
              musicsTabView,
              artistsTabView,
              albumsTabView,
              favoritesTabView,
            ]),
            floatingActionButton: FloatingActionButton(
              onPressed: () => Navigator.pushNamed(context, '/player'),
              tooltip: 'player',
              child: Icon(Icons.play_arrow),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
          return scaffold;
        },
      ),
    );
  }
}
