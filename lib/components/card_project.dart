import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mys/common/widgets/custom_elevated_button.dart';
import 'package:mys/common/widgets/custom_loading_animation.dart';
import 'package:mys/features/main/models/certificate_model.dart';
import 'package:mys/features/main/screens/detail_page.dart';

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
                // image: DecorationImage(
                //     image: NetworkImage(certificate.bannerUrl), fit: BoxFit.cover),
              ),
              child: CachedNetworkImage(
                imageUrl: certificate.bannerUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: CustomLoadingAnimation(),
                ),
                errorWidget: (context, url, error) =>
                    Icon(Icons.broken_image_rounded),
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
