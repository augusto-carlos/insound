class Music {
  String title;
  String artist;
  bool favorited;
  int duraction;

  Music({this.title, this.artist, this.duraction = 0, this.favorited = false});

  void getLabelDuraction() {}

  Music.fromJson(Map<String, dynamic> json) {
    title:
    json['title'];
    artist:
    json['artist'];
    duraction:
    json['duraction'];
    favorited:
    json['favorited'] ?? false;
  }

  toJson() {
    final Map<String, dynamic> musicJson = new Map<String, dynamic>();

    musicJson['title'] = this.title;
    musicJson['artist'] = this.artist;
    musicJson['duraction'] = this.duraction;
    musicJson['favorited'] = this.favorited;
  }
}
