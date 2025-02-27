import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mys/components/card_project.dart';
import 'package:mys/features/main/screens/pdf_view_page.dart';
import 'package:mys/utils/constans/colors.dart';
import 'package:mys/utils/constans/image_strings.dart';
import 'package:mys/common/widgets/custom_elevated_button.dart';
import 'package:mys/common/widgets/custom_social_media_button.dart';

import '../controllers/main_page_controller.dart';

class MainPage extends StatefulWidget {
  static const String routeName = '/';
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainPageController controller = MainPageController();
  bool isPermission = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muuri'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: GlowingOverscrollIndicator(
        showLeading: true,
        showTrailing: true,
        axisDirection: AxisDirection.down,
        color: TColors.primaryColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(TImages.profile),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Muhammad Sadri",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  "I am a technology professional specializing in Multiplatform Development and IT Project Management, with expertise in Flutter, Dart, Supabase, and Agile methodologies to create efficient and impactful digital solutions.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      text: "Download CV",
                      onPressed: () {
                        Navigator.pushNamed(context, PdfViewPage.routeName);
                      },
                    ),
                    const SizedBox(width: 10),
                    CustomElevatedButton(
                      text: "Let's Connect",
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Project",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("View More", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return CardProject(
                      image: TImages.sertificate,
                      title: 'Sertificate of Appreciation',
                      date: '20 February 2024',
                    );
                  },
                ),
                Divider(),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Contact",
                  ),
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSocialMediaButton(
                      text: "Github",
                      icon: FontAwesomeIcons.github,
                      onPressed: controller.launchUrlGithub,
                    ),
                    CustomSocialMediaButton(
                      text: "Instargam",
                      icon: FontAwesomeIcons.instagram,
                      onPressed: controller.launchUrlInstagram,
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSocialMediaButton(
                      text: "Email",
                      icon: FontAwesomeIcons.envelope,
                      onPressed: controller.launchMailto,
                    ),
                    CustomSocialMediaButton(
                      text: "Support",
                      icon: FontAwesomeIcons.truckFast,
                      onPressed: controller.launchUrlSaweria,
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text("© 2025 muuri.my.id. All rights reserved.")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
