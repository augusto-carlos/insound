class Artist {
  String image;
  String name;
  int musics;
  int albums;

  Artist({this.name, this.image, this.musics, this.albums});

  Artist.fromJson(Map<String, dynamic> json) {
    json['name'];
    json['image'];
    json['musics'];
    json['albums'];
  }

  toJson() {
    final Map<String, dynamic> artistJson = new Map<String, dynamic>();

    artistJson['name'] = this.name;
    artistJson['image'] = this.image;
    artistJson['musics'] = this.musics;
    artistJson['albums'] = this.albums;
  }
}
