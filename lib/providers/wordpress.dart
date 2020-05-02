import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';

class ContentProvider extends ChangeNotifier {
  WordPressAPI _wpAPI;
  List<WpPost> _posts;
  List<WpPage> _pages;
  String _site = "https://cors-anywhere.herokuapp.com/theseed.ca";

  get wpAPI => _wpAPI;

  getContent() async {
    _wpAPI = WordPressAPI(_site);
     final  posts = (await _wpAPI.getAsync('posts'))['data'];
      //_pages = (await _wpAPI.getAsync('pages'))['data'];
     print(posts);
    for (final item in posts) {
      posts.add(WpPost.fromMap(item));
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
class WpPage {
  final String title;
  final String content;

  WpPage(this.title, this.content);
  WpPage.fromMap(map)
      : this.title = map["title"],
        this.content = map["rendered"];
}
