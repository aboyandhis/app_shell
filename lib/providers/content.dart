import 'dart:convert';

import 'package:appshell/models/site_meta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class ContentProvider extends ChangeNotifier {
  String _url = "http://178.128.228.131/meta";
  SiteMeta siteMeta;

  getSiteMeta() async {
    try {
      var res = await get(_url);
      if (res.statusCode == 200) {
        var decode = jsonDecode(res.body);
        siteMeta = SiteMeta.fromJson(decode);
        print(siteMeta.author);
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
  queryApi(query) {
    
  }
}
