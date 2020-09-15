import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:insound/models/music_model.dart';
import 'package:insound/pages/player/main_view.dart';

class MusicWidget extends StatefulWidget {
  Music music;

  MusicWidget(this.music);

  @override
  _MusicWidgetState createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      leading: Container(
        padding: EdgeInsets.all(20),
        child: Icon(FeatherIcons.music, color: Colors.grey),
        decoration: BoxDecoration(
          color: Color(0X07FFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
      ),
      trailing: IconButton(
        icon: Icon(FeatherIcons.heart),
        color:
            widget.music.favorited ? Colors.pink : Colors.grey.withOpacity(0.2),
        onPressed: () {
          setState(() {
            widget.music.favorited = !widget.music.favorited;
          });
        },
      ),
      title: Text(
        widget.music.title,
        style: const TextStyle(fontSize: 18),
      ),
      subtitle: Text(widget.music.artist),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerPage(music: widget.music),
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
  }
}
