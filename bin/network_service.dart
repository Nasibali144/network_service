import 'package:network_service/model/post_model.dart';
import 'package:network_service/model/product_model.dart';
import 'package:network_service/services/http_service.dart';

void main() async {

  // String body = await NetworkService.GET(NetworkService.apiPosts, NetworkService.headers);
  // List<Post> posts = NetworkService.parsePostList(body);
  // print(posts);

  // String body = await NetworkService.GET(NetworkService.apiAlbums, NetworkService.headers);
  // List<Album> albums = NetworkService.parseAlbumList(body);
  // print(albums);
  // Post post = Post(id: 12, userId: 78, title: "title", body: "body");
  // String response = await NetworkService.POST(NetworkService.apiPosts, NetworkService.headers, post.toJson());
  // String response1 = await NetworkService.GET(NetworkService.apiPost + post.id.toString(), NetworkService.headers);
  // print("get: $response1");
  // String response = await NetworkService.PUT(NetworkService.apiPost + post.id.toString(), NetworkService.headers, post.toJson());
  // String response = await NetworkService.PATCH(NetworkService.apiPost + post.id.toString(), NetworkService.headers, {'title': "salom"});
  // String response = await NetworkService.DELETE(NetworkService.apiPost + post.id.toString(), NetworkService.headers);
  // print("delete: $response");

  // String body = await NetworkService.GET(NetworkService.apiProduct + "1", NetworkService.headers);
  // Product product = NetworkService.parseProduct(body);
  // print(product.images);

  var product = Product(id: 1, title: "title", description: "description", price: 42, discountPercentage: 12.3, rating: 4.7, stock: 2, brand: "brand", category: "category", thumbnail: "thumbnail", images: ["https://dummyjson.com/"]);
  // String response = await NetworkService.POST(NetworkService.apiProduct + "add", NetworkService.headers, product.toJson());
  // String response = await NetworkService.PUT(NetworkService.apiProduct + "update", NetworkService.headers, product.toJson());
  // String response = await NetworkService.PUT(NetworkService.apiProduct + "update", NetworkService.headers, product.toJson());
  String response = await NetworkService.DELETE(NetworkService.apiProduct + "1", NetworkService.headers);
  print(response);

}


// import 'package:ansicolor/ansicolor.dart';
//
// main(List<String> arguments) {
//   AnsiPen greenPen = AnsiPen()..green();
//   AnsiPen greenBackGroundPen = AnsiPen()..green(bg: true);
//
//   AnsiPen redTextBlueBackgroundPen = AnsiPen()..blue(bg: true)..red();
//
//   AnsiPen boldPen = AnsiPen()..white(bold: true);
//
//   AnsiPen someColorPen = AnsiPen()..rgb(r: .5, g: .2, b: .4);
//
//   print(greenPen("Hulk") + " " + greenBackGroundPen("SMASH!!!"));
//   print(redTextBlueBackgroundPen("Spider-Man!!!") + " " + boldPen("Far From Home!!!"));
//
//   print(someColorPen("Chameleon"));
//
//   print('\x1B[94m' + "hahAHaHA!!!" + '\x1B[0m');
// }