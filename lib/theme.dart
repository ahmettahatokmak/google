import 'package:flutter/material.dart';
import 'package:google/colors.dart';

class MyTheme{
  static var whiteTheme = ThemeData().copyWith(
   scaffoldBackgroundColor: Colors.white,
appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  brightness: Brightness.light,
   textTheme: const TextTheme(
  bodyMedium: TextStyle(color: Colors.black),
  bodyLarge: TextStyle(color: Colors.black),
  bodySmall: TextStyle(color: Colors.black),
  ),
  iconTheme:const IconThemeData(color: Colors.black),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 219, 219, 219))),
   backgroundColor: const Color.fromARGB(255, 219, 219, 219),
   
  );



   static var darkTheme = ThemeData().copyWith(
  
   scaffoldBackgroundColor: kDark,
   brightness: Brightness.dark,
   textTheme: const TextTheme(
  bodyMedium: TextStyle(color: Colors.white),
  bodyLarge: TextStyle(color: Colors.white),
  bodySmall: TextStyle(color: Colors.white),
  ),
  iconTheme:const IconThemeData(color: Color.fromRGBO(255,255,255,0.87)),
   appBarTheme: const AppBarTheme(backgroundColor: kDark),
   primaryColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: const Color(0XFF303134))),
    backgroundColor: kUltraDark
  );
  


}