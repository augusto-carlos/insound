import 'package:flutter/material.dart';
import 'package:insound/controllers/app_controller.dart';
import 'package:insound/models/artist_model.dart';
import 'package:insound/pages/home/widgets/artist_widget.dart';
import 'package:insound/widgets/title_text_widget.dart';

class Artists extends StatefulWidget {
  @override
  _ArtistsState createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  List<Artist> artists = AppController.instance.artists;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleTextWidget('Intérpretes'),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemCount: artists.length,
            separatorBuilder: (BuildContext context, int index) => Divider(
              indent: 10,
              endIndent: 10,
              thickness: 0,
              height: 0,
            ),
            itemBuilder: (BuildContext context, int index) => ArtistWidget(
              artists[index],
            ),
          ),
        ),
      ],
    );
  }
}
