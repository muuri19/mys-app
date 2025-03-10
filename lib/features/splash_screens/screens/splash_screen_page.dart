import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mys/utils/constans/image_strings.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenPage extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final SplashScreenController controller = SplashScreenController();

  @override
  void initState() {
    super.initState();
    controller.startSplashScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Lottie.asset(TImages.androidLottie)),
      ),
    );
  }
}
