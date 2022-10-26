// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:g5/model/post_model.dart' ;
// import 'package:http/retry.dart';
// class NetWorkRequest {
//   static const String url='https://jsonplaceholder.typicode.com/todos';
//   static List<Post> parsePost(String responseBody) {
//       var list = json.decode(responseBody) as List<dynamic> ;
//       List<Post> posts = list.map((item)=>  Post.fromJson(item)).toList();
//       return posts ;
//   }
//   static Future<List<Post>> fetchPosts({int page = 1}) async {
//
//     final client = RetryClient(http.Client());
//     try {
//       final response = await client.read(Uri.http('$url', ''));
//
//     } finally {
//       client.close();
//     }
//     // final response = await http.get(url) ;
//     // if(response.statusCode = 200) {
//     //   return compute(parsePost(parsePost,response.body) ;
//     // }
// }
// }