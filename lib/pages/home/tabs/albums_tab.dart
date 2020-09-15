import 'package:flutter/material.dart';
import 'package:insound/controllers/app_controller.dart';
import 'package:insound/models/album_model.dart';
import 'package:insound/pages/home/widgets/album_widget.dart';
import 'package:insound/widgets/title_text_widget.dart';

class Albums extends StatefulWidget {
  @override
  _AlbumsState createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  List<Album> albums = AppController.instance.albums;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleTextWidget("Álbuns"),
        Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: albums.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return AlbumWidget(albums[index]);
                })),
      ],
    );
  }
}
