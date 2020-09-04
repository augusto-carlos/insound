import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:insound/models/music.model.dart';
import 'package:insound/pages/player/main.view.dart';

class Musics extends StatelessWidget {
  List<Music> musics;

  Musics({this.musics});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: musics.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
              indent: 10,
              endIndent: 10,
              thickness: 0,
              height: 0,
            ),
        itemBuilder: (BuildContext context, int index) {
          final track = musics[index];

          return ListTile(
            contentPadding:
                EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            dense: true,
            trailing: IconButton(
                icon: Icon(FeatherIcons.heart),
                color: track.favorited
                    ? Colors.pink
                    : Colors.grey.withOpacity(0.2),
                onPressed: () {}),
            leading: Icon(FeatherIcons.music, color: Colors.grey),
            title: Text(track.title, textScaleFactor: 1),
            subtitle: Text(track.artist),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlayerPage(music: track),
                ),
              );
            },
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('Opções'),
                      contentPadding: EdgeInsets.all(20),
                      children: <Widget>[
                        ListTile(
                          title: Text('Eliminar'),
                          leading: Icon(FeatherIcons.trash, color: Colors.grey),
                        ),
                        ListTile(
                          title: Text('Definir como toque'),
                          leading: Icon(FeatherIcons.bell, color: Colors.grey),
                        ),
                        ListTile(
                          title: Text('Ver detalhes'),
                          leading: Icon(FeatherIcons.info, color: Colors.grey),
                        ),
                      ],
                    );
                  });
            },
          );
        });
  }
}
