class Album {
  late int userId;
  late int id;
  late String title;

  Album({
    required this.id,
    required this.userId,
    required this.title,
  });
  Album.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json["userId"];
    title = json["title"];
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "title": title,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}