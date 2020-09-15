class Playlist {
  String name;
  String image;
  int musics;

  Playlist({this.name, this.image, this.musics});

  Playlist.fromJson(Map<String, dynamic> json) {
    json['name'];
    json['image'];
    json['musics'];
  }

  toJson() {
    final Map<String, dynamic> artistJson = new Map<String, dynamic>();

    artistJson['name'] = this.name;
    artistJson['image'] = this.image;
    artistJson['musics'] = this.musics;
  }
}
