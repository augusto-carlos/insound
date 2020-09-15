import 'package:flutter/material.dart';
import 'package:insound/models/album_model.dart';

class AlbumWidget extends StatelessWidget {
  final Album album;

  AlbumWidget(this.album);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white12,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(14),
                    blurRadius: 07.0,
                  ),
                ],
                image: album.image != null
                    ? DecorationImage(
                        image: AssetImage(album.image),
                        fit: BoxFit.cover,
                      )
                    : null),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    album.name,
                    textScaleFactor: 1.4,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(album.artist),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
