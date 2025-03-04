import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mys/features/main/screens/cv_page.dart';
import '/components/card_project.dart';
import '/components/hero_section.dart';
import '/features/main/models/certificate_model.dart';
import '/features/main/screens/all_certificate.dart';
import '/utils/constans/colors.dart';
import '/common/widgets/custom_elevated_button.dart';
import '/common/widgets/custom_social_media_button.dart';
import '/utils/constans/text_strings.dart';
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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2C1A4A),
              Color(0xFFA020F0),
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
                HeroSection(),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            child: CustomElevatedButton(
                              text: "Curriculum Vitae",
                              onPressed: () {
                                Navigator.pushNamed(context, CvPage.routeName);
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            height: 50,
                            child: CustomElevatedButton(
                              text: "Let's Connect",
                              onPressed: controller.whatsappMe,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 5),
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
                            ? (certificate.length > 2 ? 2 : certificate.length)
                            : 0,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return CardProject(
                            certificate: certificate[index],
                          );
                        },
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        child: Text(
                          "CONTACT",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(
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
                      SizedBox(
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
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
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
