import 'package:flutter/material.dart';

class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.black),
      headlineMedium: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.w600,color: Colors.black ),
    headlineSmall: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.w600,color: Colors.black ),

    titleLarge:const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.black),
    titleMedium: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.black),
    titleSmall: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.black),

    labelLarge: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.black),
    labelMedium: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.black),


  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.w600,color: Colors.white ),

    titleLarge:const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.white),
    titleMedium: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.white),
    titleSmall: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.white),

    labelLarge: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.white),
    labelMedium: const TextStyle().copyWith(fontSize:32.0, fontWeight:FontWeight.bold,color: Colors.white),

  );

}