import 'package:flutter/material.dart';
import 'package:mys/features/settings/screens/setting_page.dart';

import '../utils/constans/image_strings.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 125,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(TImages.bannerGif),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.settings, color: Colors.white, size: 20),
            onPressed: () {
              Navigator.pushNamed(context, SettingsPage.routeName);
            },
          ),
        ),
        Positioned(
          bottom: -40,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFA020F0), Color(0xFF2C1A4A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(TImages.profile),
                backgroundColor: Colors.white,
              ),
              Positioned(
                right: -10,
                top: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFA020F0),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Text(
                    "Hallo !",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
