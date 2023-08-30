import 'package:flutter/material.dart';

class MyTheme {
  static getMyTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );
  }
}

// getMainTheme() {
//   return ThemeData(
//     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//     useMaterial3: true,
//   );
// }
