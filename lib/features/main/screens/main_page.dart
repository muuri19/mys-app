import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/components/card_project.dart';
import '/components/hero_section.dart';
import '/features/main/models/certificate_model.dart';
import '/features/main/screens/all_certificate.dart';
import '/utils/constans/colors.dart';
import '/utils/constans/text_strings.dart';
import '/widgets/custom_social_media_button.dart';
import '../controllers/main_page_controller.dart';

class MainPage extends StatefulWidget {
  static const String routeName = '/';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainPageController controller = MainPageController();
  List<CertificateModel> certificate = [];

  @override
  void initState() {
    super.initState();
    _fetchCertificate();
  }

  Future<void> _fetchCertificate() async {
    List<CertificateModel> data = await controller.loadCertificate();
    setState(() {
      certificate = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDarkMode
                ? [
                    const Color(0xFF2C1A4A),
                    const Color(0xFFA020F0),
                  ]
                : [
                    const Color(0xFFFBFBFB),
                    const Color(0xFFFBFBFB),
                  ],
          ),
        ),
        child: GlowingOverscrollIndicator(
          showLeading: true,
          showTrailing: true,
          axisDirection: AxisDirection.down,
          color: TColors.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeroSection(),
                const SizedBox(height: 60),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        TTexts.developerName,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        TTexts.developerDescription,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: controller.whatsappMe,
                          child: const Text("Let's Connect"),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("CERTIFICATE",
                              style: Theme.of(context).textTheme.headlineSmall),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AllCertificate.routeName);
                            },
                            child: Text(
                              "View All",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: certificate.isNotEmpty
                            ? (certificate.length > 1 ? 1 : certificate.length)
                            : 0,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return CardProject(
                            certificate: certificate[index],
                          );
                        },
                      ),
                      const Divider(),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        child: Text(
                          "CONTACT",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
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
                      const SizedBox(
                        height: 5,
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        TTexts.footerText,
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
