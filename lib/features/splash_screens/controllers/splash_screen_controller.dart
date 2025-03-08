import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mys/features/main/screens/main_page.dart';

class SplashScreenController {
  startSplashScreen(BuildContext context) {
    var duration = Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, MainPage.routeName);
    });
  }
}
