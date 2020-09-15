import 'package:flutter/foundation.dart';
import 'package:insound/models/album_model.dart';
import 'package:insound/models/artist_model.dart';
import 'package:insound/models/music_model.dart';
import 'package:insound/models/playlist_model.dart';
// import 'package:insound/interfaces/shared_prefs_interface.dart';
// import 'package:insound/services/shared_prefs_service.dart';

class AppController {
  static final AppController instance = AppController._();

  final isDark = ValueNotifier<bool>(true);
  // final ILocalStorage storage = LocalStorage();
  final List<Music> musics = [
    Music(
      title: 'Good years',
      artist: 'Zayn',
      duraction: 28,
      favorited: true,
      image: 'assets/images/artist-1.png',
    ),
    Music(
      title: 'There you are',
      artist: 'Zayn',
      duraction: 28,
      favorited: true,
      image: 'assets/images/artist-1.png',
    ),
    Music(
      title: 'A change is gonna come',
      artist: 'Sam Cooke',
      duraction: 46,
      image: 'assets/images/artist-2.jpg',
    ),
    Music(
      title: 'Cupid',
      artist: 'Sam Cooke',
      duraction: 46,
      image: 'assets/images/artist-2.jpg',
    ),
    Music(
      title: 'Chain Gang',
      artist: 'Sam Cooke',
      duraction: 46,
      image: 'assets/images/artist-2.jpg',
    ),
    Music(
      title: 'Georgia on my mind',
      artist: 'Ray Charles',
      duraction: 60,
      image: 'assets/images/artist-3.jpg',
    ),
    Music(
      title: 'I can\'t stop loving you',
      artist: 'Ray Charles',
      duraction: 60,
      favorited: true,
      image: 'assets/images/artist-3.jpg',
    ),
    Music(
      title: 'So Done',
      artist: 'Alicia Keys',
      duraction: 60,
      favorited: true,
      image: 'assets/images/artist-4.png',
    ),
    Music(
      title: 'Underdog',
      artist: 'Alicia Keys',
      duraction: 60,
      image: 'assets/images/artist-4.png',
    ),
    Music(
      title: 'Raise a Man',
      artist: 'Alicia Keys',
      duraction: 60,
      image: 'assets/images/artist-4.png',
    ),
  ];

  final List<Artist> artists = [
    Artist(
      name: 'Zayn',
      image: 'assets/images/artist-1.png',
      musics: 14,
      albums: 3,
    ),
    Artist(
      name: 'Sam Cooke',
      image: 'assets/images/artist-2.jpg',
      musics: 8,
      albums: 2,
    ),
    Artist(
      name: 'Ray Charles',
      image: 'assets/images/artist-3.jpg',
      musics: 12,
      albums: 2,
    ),
    Artist(
      name: 'Alicia Keys',
      image: 'assets/images/artist-1.jpg',
      musics: 28,
      albums: 3,
    ),
  ];

  final List<Album> albums = [
    Album(
        name: 'Sweet memories',
        artist: 'Ray Charles',
        image: 'assets/images/album-1.jpg'),
    Album(
        name: 'Mind of mine',
        artist: 'Zayn',
        image: 'assets/images/album-2.jpg'),
    Album(
        name: 'Good job',
        artist: 'Alicia Keys',
        image: 'assets/images/album-3.jpg'),
    Album(
        name: 'Remember',
        artist: 'Sam Cooke',
        image: 'assets/images/artist-2.jpg'),
    Album(
        name: 'Alicia Keys',
        artist: 'Alicia Keys',
        image: 'assets/images/artist-1.jpg'),
  ];

  final List<Playlist> playlists = [
    Playlist(
        image: "assets/images/playlist-1.jpg",
        name: 'Para ouvir mais tarde',
        musics: 10),
    Playlist(
        image: "assets/images/playlist-2.jpg",
        name: 'Músicas para dormir',
        musics: 24),
    Playlist(
        image: "assets/images/playlist-3.jpg",
        name: 'From youtube',
        musics: 13),
    Playlist(
        image: "assets/images/playlist-4.png",
        name: 'Classic Jazz',
        musics: 20),
  ];

  AppController._() {
    // storage.get('Darktheme').then((value) {
    //   if (value != null) isDark.value = value;
    // });
  }

  changeTheme() => isDark.value = !isDark.value;
}
