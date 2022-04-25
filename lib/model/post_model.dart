class Post {
  late int userId;
  late int id;
  late String title;
  late String body;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
});
  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json["userId"];
    title = json["title"];
    body = json["body"];
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "title": title,
    "body": body,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}