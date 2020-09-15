import 'package:flutter/material.dart';
import 'package:insound/controllers/app_controller.dart';
import 'package:insound/models/music_model.dart';
import 'package:insound/models/playlist_model.dart';
import 'package:insound/pages/home/widgets/music_widget.dart';
import 'package:insound/pages/home/widgets/playlist_widget.dart';
import 'package:insound/widgets/title_text_widget.dart';

class Musics extends StatefulWidget {
  @override
  _MusicsState createState() => _MusicsState();
}

class _MusicsState extends State<Musics> {
  List<Music> musics = AppController.instance.musics;
  List<Playlist> playlists = AppController.instance.playlists;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleTextWidget('PlayLists'),
                IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  icon: Icon(Icons.short_text),
                  color: Colors.grey,
                  iconSize: 40,
                  tooltip: 'Ordem',
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            title: Text('Ordenar'),
                            contentPadding: EdgeInsets.all(20),
                            children: <Widget>[
                              ListTile(
                                title: Text('Nome'),
                              ),
                              ListTile(
                                title: Text('Duração'),
                              ),
                              ListTile(
                                title: Text('Data'),
                              ),
                            ],
                          );
                        });
                  },
                ),
              ]),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
                children: playlists
                    .map((playlist) => PlaylistWidget(playlist))
                    .toList()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TitleTextWidget('Todas as músicas'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('${musics.length} músicas'),
              ),
            ],
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: musics.length,
            separatorBuilder: (BuildContext context, int index) => Divider(
              indent: 10,
              endIndent: 10,
              thickness: 0,
              height: 0,
            ),
            itemBuilder: (BuildContext context, int index) => MusicWidget(
              musics[index],
            ),
          )
        ],
      ),
    );
  }
}
