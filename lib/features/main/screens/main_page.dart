import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mys/components/card_project.dart';
import 'package:mys/features/main/models/certificate_model.dart';
import 'package:mys/features/main/screens/all_certificate.dart';
import 'package:mys/features/main/screens/pdf_view_page.dart';
import 'package:mys/features/settings/screens/setting_page.dart';
import 'package:mys/utils/constans/colors.dart';
import 'package:mys/utils/constans/image_strings.dart';
import 'package:mys/common/widgets/custom_elevated_button.dart';
import 'package:mys/common/widgets/custom_social_media_button.dart';
import 'package:mys/utils/constans/text_strings.dart';
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
      appBar: AppBar(
        title: Text(TTexts.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, SettingsPage.routeName);
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
// ------------------------- Hero Section ------------------------- //
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(TImages.profile),
                ),
                const SizedBox(height: 10),
                Text(
                  TTexts.developerName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  TTexts.developerDescription,
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
                      onPressed: controller.whatsappMe,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),
// ------------------------- End Hero Section ------------------------- //

// ------------------------- Project Section ------------------------- //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Project",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AllCertificate.routeName);
                      },
                      child: const Text("View All"),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
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
                const Divider(),
// ------------------------- End Project Section ------------------------- //

// ------------------------- Contact Section ------------------------- //
                const SizedBox(
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
// ------------------------- End Contact Section ------------------------- //

// ------------------------- Footer Section ------------------------- //
                Text(TTexts.footerText)
// ------------------------- End Footer Section ------------------------- //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
