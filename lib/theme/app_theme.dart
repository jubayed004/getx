import 'package:flutter/material.dart';

class AppTheme{

  ///===========LightTheme=========///
  ThemeData lightTheme(context)=>ThemeData(
      brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
    primarySwatch: Colors.blue
  );

///===========DarkTheme=========///

  ThemeData darkTheme (context)=> ThemeData(
   colorScheme: ColorScheme.dark(),
   primarySwatch: Colors.amber
  );

}