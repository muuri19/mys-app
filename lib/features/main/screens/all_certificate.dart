import 'package:flutter/material.dart';

import '../../../components/card_project.dart';
import '../controllers/main_page_controller.dart';
import '../models/certificate_model.dart';

class AllCertificate extends StatefulWidget {
  static const String routeName = '/all-certificate';
  const AllCertificate({super.key});

  @override
  State<AllCertificate> createState() => _AllCertificateState();
}

class _AllCertificateState extends State<AllCertificate> {
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
            title: const Text('All Certificate'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: certificate.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CardProject(
                      certificate: certificate[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
