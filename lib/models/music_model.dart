class Music {
  String title;
  String artist;
  String image;
  bool favorited;
  int duraction;

  Music(
      {this.title,
      this.artist,
      this.duraction = 0,
      this.favorited = false,
      this.image});

  Music.fromJson(Map<String, dynamic> json) {
    title:
    json['title'];
    artist:
    json['artist'];
    image:
    json['image'];
    duraction:
    json['duraction'];
    favorited:
    json['favorited'] ?? false;
  }

  toJson() {
    final Map<String, dynamic> musicJson = new Map<String, dynamic>();

    musicJson['title'] = this.title;
    musicJson['artist'] = this.artist;
    musicJson['image'] = this.image;
    musicJson['duraction'] = this.duraction;
    musicJson['favorited'] = this.favorited;
  }
}
