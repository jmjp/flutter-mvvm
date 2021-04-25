import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class DarkTheme {
  static Color black = "#121214".toColor();
  static Color darkBG = "#202024".toColor();

  static Map<int, Color> purplesColors = {
    50: "#f0ebfc".toColor(),
    100: "#dacdf8".toColor(),
    200: "#c1abf3".toColor(),
    300: "#a889ee".toColor(),
    400: "#9570ea".toColor(),
    500: "#8257e6".toColor(),
    600: "#7a4fe3".toColor(),
    700: "#6f46df".toColor(),
    800: "#653cdb".toColor(),
    900: "#522cd5".toColor(),

  };

  static MaterialColor purpleMaterial = MaterialColor(0xFF8257e6, purplesColors);

  static var _appBarTheme = new AppBarTheme(
    backgroundColor: black,
    brightness: Brightness.dark,
    shadowColor: purplesColors[500],
    centerTitle: true,
    textTheme: TextTheme(
      headline6: TextStyle(fontSize: 26,color: purplesColors[500])
    )
  );

  static var _snackbarTheme = new SnackBarThemeData(
    backgroundColor: purpleMaterial,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    behavior: SnackBarBehavior.floating
  );

  static var _textTheme = new TextTheme(
    headline1: TextStyle(fontSize: 14,color: Colors.white),
    headline2: TextStyle(fontSize: 18,color: Colors.white),
    headline3: TextStyle(fontSize: 22,color: Colors.white),
    headline4: TextStyle(fontSize: 26,color: Colors.white),
    headline5: TextStyle(fontSize: 30,color: Colors.white),
    headline6: TextStyle(fontSize: 34,color: Colors.white),
    bodyText1: TextStyle(fontSize: 18,color: Colors.white),
    bodyText2: TextStyle(fontSize: 18,color: Colors.white)

  );


  ThemeData themeConfig = new ThemeData(
    appBarTheme: _appBarTheme,
    primaryColor: purpleMaterial[500],
    primarySwatch: purpleMaterial,
    primaryColorBrightness: Brightness.dark,
    scaffoldBackgroundColor: darkBG,
    accentColor: purpleMaterial[500],
    splashColor: purpleMaterial.shade300,
    snackBarTheme: _snackbarTheme,
    textTheme: _textTheme,
    fontFamily: GoogleFonts.poppins().fontFamily,
    hintColor: purpleMaterial[500],
    canvasColor: purpleMaterial[500]
    
  );

  ThemeData get theme => themeConfig;

}
