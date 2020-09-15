import 'package:flutter/material.dart';
import 'package:insound/models/artist_model.dart';

class ArtistWidget extends StatelessWidget {
  final Artist artist;
  ArtistWidget(this.artist);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 14),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white12,
              image: DecorationImage(
                image: AssetImage(artist.image),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(14),
                  blurRadius: 07.0,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  artist.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '${artist.albums} álbun(s)',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                '${artist.musics} música(s)',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
