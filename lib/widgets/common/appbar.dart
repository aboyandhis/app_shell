import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appshell/providers/app.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   final app = Provider.of<AppData>(context);
    return AppBar(
      automaticallyImplyLeading: true,
      title: Text(title),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.lightbulb_outline), onPressed: app.toggleDark)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
