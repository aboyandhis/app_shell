import 'package:appshell/providers/app.dart';
import 'package:appshell/widgets/common/appbar.dart';
import 'package:appshell/widgets/common/chat_fab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class PageWidget extends StatelessWidget {
  final Widget child;

  const PageWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppData>(context);

    return Scaffold(
      floatingActionButton: ChatFab(),
      drawer: MyDrawer(),
      appBar: MyAppBar(
        title: "Home",
      ),
      body: Container(
        child: child,
      ),
    );
  }
}



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: FlutterLogo()),
          ListTile(
            leading: Icon(Icons.home),
            onTap: () {},
            title: Text('Home'),
          )
        ],
      ),
    );
  }
}
