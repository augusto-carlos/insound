class Album {
  String name;
  String artist;
  String image;

  Album({
    this.name,
    this.artist,
    this.image,
  });

  Album.fromJson(Map<String, dynamic> json) {
    name:
    json['name'];
    artist:
    json['artist'];
    image:
    json['image'];
  }

  toJson() {
    final Map<String, dynamic> musicJson = new Map<String, dynamic>();

    musicJson['name'] = this.name;
    musicJson['artist'] = this.artist;
    musicJson['image'] = this.image;
  }
}
