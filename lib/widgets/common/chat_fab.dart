import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatFab extends StatelessWidget {
  const ChatFab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(FontAwesomeIcons.facebookMessenger),
      onPressed: () {
      print('CHAT');
    });
  }
}