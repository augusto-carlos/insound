import 'package:flutter/material.dart';
import 'package:insound/controllers/app_controller.dart';
import 'package:insound/models/music_model.dart';
import 'package:insound/pages/home/widgets/music_widget.dart';
import 'package:insound/widgets/title_text_widget.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Music> favoriteMusics =
      AppController.instance.musics.where((music) => music.favorited).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleTextWidget('Favoritas'),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemCount: favoriteMusics.length,
            separatorBuilder: (BuildContext context, int index) => Divider(
              indent: 10,
              endIndent: 10,
              thickness: 0,
              height: 0,
            ),
            itemBuilder: (BuildContext context, int index) => MusicWidget(
              favoriteMusics[index],
            ),
          ),
        ),
      ],
    );
  }
}
