import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData(
    brightness: Brightness.light,

    // colorScheme: const ColorScheme.light(
    //     brightness: Brightness.light,
    //     primary: Color(0xffD9614C),
    //     onPrimary: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(const Color(0xffD9614C)),
      fixedSize: MaterialStateProperty.all(Size(Get.width, 75)),
      // textStyle:
      //     MaterialStateProperty.all(Theme.of(Get.context!).textTheme.bodyLarge),
    )),
    primaryColor: const Color(0xffD9614C),
    scaffoldBackgroundColor: const Color(0xffF8EEE2),
    fontFamily: GoogleFonts.nunito().fontFamily,
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          color: Color(0xff403B36), fontSize: 40, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: Color(0xff595550), fontSize: 16, fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(
          color: Color(0xff403B36), fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    // colorScheme: const ColorScheme.dark(
    //     brightness: Brightness.dark,
    //     primary: Color(0xffD9614C),
    // onPrimary: Colors.white),
    primaryColor: const Color(0xffD9614C),
    scaffoldBackgroundColor: Colors.black45,
    fontFamily: GoogleFonts.nunito().fontFamily,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Color.fromARGB(255, 206, 206, 206),
          fontSize: 16,
          fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(
          color: Color.fromARGB(255, 247, 247, 247),
          fontSize: 24,
          fontWeight: FontWeight.w900),
      displayLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
    ),
  );
}
