import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core/theme/theme_config.dart';

class MyTheme {
  static getTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
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
