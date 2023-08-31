import 'package:flutter/foundation.dart';
import 'package:flutter_slicing_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core/theme/theme.dart';
import 'package:flutter_slicing_ui/core/theme/theme_dark.dart';

import 'state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: MyTheme.getTheme(),
      // theme: MyDarkTheme.getMyDarkTheme(),
      debugShowCheckedModeBanner: false,
      home: kDebugMode ? const LoginView() : const SplashView(),
    );
  }
}
