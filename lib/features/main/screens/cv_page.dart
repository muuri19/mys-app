import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mys/utils/constans/image_strings.dart';

class CvPage extends StatelessWidget {
  static const String routeName = '/cv';
  const CvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("CV Muhammad Sadri"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Card(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      "MUHAMMAD SADRI",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      "TELKOM UNIVERSITY STUDENT",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Lottie.asset(TImages.comingSoonLottie, fit: BoxFit.cover)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
