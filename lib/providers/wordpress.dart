import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';

class ContentProvider extends ChangeNotifier {
  WordPressAPI _wpAPI;
  List<WpPost> posts;
  String _site = "https://cors-anywhere.herokuapp.com/theseed.ca";

  get wpAPI => _wpAPI;

  getContent() async {
    _wpAPI = WordPressAPI(_site);
    final posts = (await _wpAPI.getAsync('posts'))['data'];
    for (final post in posts) {
      posts.add(WpPost.fromMap(post));
      print(posts.length);
    }
  }
}

class WpPost {
  final String title;
  final String content;

  WpPost(this.title, this.content);
  WpPost.fromMap(map)
      : this.title = map["title"],
        this.content = map["rendered"];
}
