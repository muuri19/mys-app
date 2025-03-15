import 'package:flutter/material.dart';
import '../widgets/custom_elevated_button.dart';
import '/features/main/models/certificate_model.dart';
import '/features/main/screens/detail_page.dart';

class CardProject extends StatelessWidget {
  final CertificateModel certificate;
  const CardProject({
    super.key,
    required this.certificate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Image.asset(
                certificate.bannerUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              certificate.namaSertifikat,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              certificate.lembaga,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomElevatedButton(
                    text: "Detail",
                    onPressed: () {
                      Navigator.pushNamed(context, DetailPage.routeName,
                          arguments: certificate);
                    }))
          ],
        ),
      ),
    );
  }
}
