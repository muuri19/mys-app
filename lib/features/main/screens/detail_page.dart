import 'package:flutter/material.dart';
import 'package:mys/features/main/models/certificate_model.dart';

class DetailPage extends StatelessWidget {
  static const String routeName = '/detail';
  final CertificateModel certificate;
  const DetailPage({super.key, required this.certificate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(certificate.namaSertifikat),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 1),
                  image: DecorationImage(
                      image: NetworkImage(certificate.bannerUrl),
                      fit: BoxFit.cover),
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
                height: 5,
              ),
              Text(
                certificate.date,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                certificate.deskripsi,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
