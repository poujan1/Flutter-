import 'package:flutter/material.dart';
class MyTheme{
 static ThemeData lightTheme(BuildContext context)=>ThemeData(
    // primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
    // color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black)
      
    )
  );
  static ThemeData darkTheme(BuildContext context)=>ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.dark,



  );
}