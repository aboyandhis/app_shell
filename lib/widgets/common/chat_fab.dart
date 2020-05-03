import 'package:appshell/providers/content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ChatFab extends StatelessWidget {
  const ChatFab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = Provider.of<ContentProvider>(context);
    return FloatingActionButton(
        child: Icon(FontAwesomeIcons.facebookMessenger),
        onPressed: () {
          content.getSiteMeta();
          print('CHAT');
        });
  }
}


