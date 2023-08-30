import 'package:flutter/material.dart';

class MyDarkTheme {
  static getMyDarkTheme() {
    return ThemeData.dark().copyWith(
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
