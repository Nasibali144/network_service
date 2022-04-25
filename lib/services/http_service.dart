import 'dart:convert';

import 'package:http/http.dart';
import 'package:network_service/model/album_model.dart';
import 'package:network_service/model/post_model.dart';

class NetworkService {
  // URL
  static const String baseUrl = "jsonplaceholder.typicode.com";

  // HEADERS
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  // APIS
  static const String apiPosts = "/posts";
  static const String apiPost = "/posts/"; // {id}
  static const String apiAlbums = "/albums";
  static const String apiAlbum = "/albums/"; // {id}


  // METHODS
  static Future<String> GET(String api, Map<String, String> headers) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> POST(String api, Map<String, String> headers, Map<String, dynamic> body) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers, Map<String, dynamic> body) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await put(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> PATCH(String api, Map<String, String> headers, Map<String, dynamic> body) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await patch(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  // PARSING
  static List<Post> parsePostList(String body) {
    List json = jsonDecode(body);
    List<Post> posts = json.map((map) => Post.fromJson(map)).toList();
    return posts;
  }

  static List<Album> parseAlbumList(String body) {
    List json = jsonDecode(body);
    List<Album> albums = json.map((map) => Album.fromJson(map)).toList();
    return albums;
  }

  static Album parseAlbum(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    Album albums = Album.fromJson(json);
    return albums;
  }
}