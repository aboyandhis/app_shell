import 'package:appshell/providers/content.dart';
import 'package:appshell/widgets/page/page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  static final String routeName = "/";
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final content = Provider.of<ContentProvider>(context);
    //content.getContent();
    return PageWidget(
        child: Center(
      child: Column(
        children: <Widget>[
          Text(
            'Home',
            style: theme.textTheme.bodyText1,
          ),
        ],
      ),
    ));
  }
}
