import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppData extends ChangeNotifier {
  String _name = "Patrick Kelly";
  String get name => _name;
  String _logo = "";
  String get logo => _logo;
  bool _dark = false;
  bool get dark => _dark;
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  toggleDark() {
    _dark = !_dark;
    _dark ? _themeMode = ThemeMode.dark : _themeMode = ThemeMode.light;
    notifyListeners();
  }

  static Color primaryColorLight = Colors.pink[200];
  static Color accentColorLight = Colors.limeAccent[200];
  static Color textLight = Colors.black87;
  static Color bglight = Colors.white;
  static Color primaryColorDark = Colors.deepPurple[200];
  static Color accentColorDark = Colors.amber[200];
  static Color textDark = Colors.white;
  static Color bgDark = Colors.black87;



  ThemeData lightTheme = ThemeData(
    accentColor: accentColorLight,
    primaryColor: primaryColorLight,
    textTheme: GoogleFonts.merriweatherTextTheme(
        TextTheme(bodyText1: TextStyle(color: textLight))),
  );
  ThemeData darkTheme = ThemeData(
        primaryColorLight: primaryColorLight,
        scaffoldBackgroundColor: bgDark,
        accentColor: accentColorDark,
        primaryColor: primaryColorDark,
        backgroundColor: bgDark,
        textTheme: GoogleFonts.merriweatherTextTheme(
        TextTheme(bodyText1: TextStyle(color: textDark))),
      );
}
