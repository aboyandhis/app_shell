import 'package:appshell/providers/app.dart';
import 'package:appshell/providers/wordpress.dart';
import 'package:appshell/screens/home.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppData>(create: (context) => AppData()),
        ChangeNotifierProvider<ContentProvider>(
            create: (context) => ContentProvider()),
      ],
      child: Consumer2<AppData, ContentProvider>(
          builder: (BuildContext context, app, content, _) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: app.darkTheme,
            themeMode: app.themeMode,
            title: app.name,
            theme: app.lightTheme,
            home: Home());
      }),
    );
  }
}
