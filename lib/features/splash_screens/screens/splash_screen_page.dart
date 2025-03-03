import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mys/utils/constans/image_strings.dart';

class SplashScreenPage extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(TImages.androidLottie),
      ),
    );
  }
}
