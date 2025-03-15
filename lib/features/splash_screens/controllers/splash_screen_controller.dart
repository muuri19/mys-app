import 'dart:async';
import 'package:flutter/material.dart';
import '/features/main/screens/main_page.dart';

class SplashScreenController {
  Future<void> startSplashScreen(BuildContext context) async {
    var duration = const Duration(seconds: 5);

    Timer(duration, () {
      Navigator.pushReplacementNamed(context, MainPage.routeName);
    });
  }


}
