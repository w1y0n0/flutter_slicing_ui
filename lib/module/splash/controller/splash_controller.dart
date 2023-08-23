import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core.dart';

class SplashController extends State<SplashView> {
  static late SplashController instance;
  late SplashView view;

  @override
  void initState() {
    instance = this;
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const IntroView()),
      );
    });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
