import 'package:flutter/material.dart';
import 'package:insound/models/music_model.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class PlayerPage extends StatefulWidget {
  Music music;
  double musicTimer = 0;

  PlayerPage({this.music});

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(FeatherIcons.arrowLeft),
            onPressed: () => Navigator.pushNamed(context, "/home"),
          ),
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(FeatherIcons.moreHorizontal),
              onSelected: (Widget result) {
                setState(() {});
              },
              padding: EdgeInsets.only(right: 20),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Widget>>[
                PopupMenuItem<Widget>(child: Text('Eliminar')),
                PopupMenuItem<Widget>(child: Text('Definir como toque')),
                PopupMenuItem<Widget>(child: Text('Detalhes')),
              ],
            ),
          ],
        ),
        body: Container(
            child: Center(
          child: Column(
            children: <Widget>[
              Text(widget.music.artist, textScaleFactor: 1),
              Container(
                child: Column(
                  children: <Widget>[
                    Icon(FeatherIcons.music, size: 70),
                    Padding(
                      child: Text(widget.music.title, textScaleFactor: 1.3),
                      padding: EdgeInsets.all(20),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                width: 360,
                height: 360,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    style: BorderStyle.solid,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(14),
                      blurRadius: 07.0,
                    ),
                  ],
                  color: Color(0x11FFFFFF),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(widget.musicTimer.toString()),
                        Text(widget.music.duraction.toString()),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                    Slider(
                        value: widget.musicTimer,
                        min: 0,
                        max: widget.music.duraction.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            widget.musicTimer = value.roundToDouble();
                          });
                        }),
                  ],
                ),
                width: 380,
                margin: EdgeInsets.only(top: 50),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 36,
                      icon: Icon(Icons.repeat_one),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(FeatherIcons.skipBack),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 80,
                      icon: Icon(FeatherIcons.pauseCircle),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(FeatherIcons.skipForward),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30,
                      color: widget.music.favorited ? Colors.pink : Colors.grey,
                      icon: Icon(FeatherIcons.heart),
                      onPressed: () => setState(() {
                        widget.music.favorited = !widget.music.favorited;
                      }),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                padding: EdgeInsets.symmetric(horizontal: 4),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        )));
  }
}
