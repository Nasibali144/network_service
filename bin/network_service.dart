import 'package:network_service/model/album_model.dart';
import 'package:network_service/model/post_model.dart';
import 'package:network_service/services/http_service.dart';

void main() async {

  // String body = await NetworkService.GET(NetworkService.apiPosts, NetworkService.headers);
  // List<Post> posts = NetworkService.parsePostList(body);
  // print(posts);

  // String body = await NetworkService.GET(NetworkService.apiAlbums, NetworkService.headers);
  // List<Album> albums = NetworkService.parseAlbumList(body);
  // print(albums);

  Post post = Post(id: 12, userId: 78, title: "title", body: "body");
  String response = await NetworkService.POST(NetworkService.apiPosts, NetworkService.headers, post.toJson());
  print(response);
}


