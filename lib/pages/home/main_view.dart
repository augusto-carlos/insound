import 'package:flutter/material.dart';
import 'package:insound/pages/home/widgets/drawer_widget.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:insound/pages/home/tabs/albums_tab.dart';
import 'package:insound/pages/home/tabs/musics_tab.dart';
import 'package:insound/pages/home/tabs/favorites_tab.dart';
import 'package:insound/pages/home/tabs/artists_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Tab> _tabs = <Tab>[
    Tab(icon: Icon(FeatherIcons.music, size: 30)),
    Tab(icon: Icon(FeatherIcons.disc, size: 30)),
    Tab(icon: Icon(FeatherIcons.users, size: 30)),
    Tab(icon: Icon(FeatherIcons.heart, size: 30)),
  ];

  final List<Widget> _tabViews = [
    Musics(),
    Albums(),
    Artists(),
    Favorites(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              tooltip: 'Buscar',
              padding: EdgeInsets.symmetric(horizontal: 26),
              icon: Icon(FeatherIcons.search),
              color: Colors.grey,
              onPressed: () => null,
            )
          ],
        ),
        drawer: DrawerWidget(),
        body: TabBarView(
          controller: DefaultTabController.of(context),
          physics: BouncingScrollPhysics(),
          children: _tabViews.map((tabView) => tabView).toList(),
        ),
        bottomNavigationBar: TabBar(
          controller: DefaultTabController.of(context),
          tabs: _tabs,
        ),
      ),
    );
  }
}
