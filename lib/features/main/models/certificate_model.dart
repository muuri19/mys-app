// To parse this JSON data, do
//
//     final certificateModel = certificateModelFromJson(jsonString);

import 'dart:convert';

List<CertificateModel> certificateModelFromJson(String str) =>
    List<CertificateModel>.from(
        json.decode(str).map((x) => CertificateModel.fromJson(x)));

String certificateModelToJson(List<CertificateModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CertificateModel {
  int id;
  String namaSertifikat;
  String lembaga;
  String pdfUrl;
  String bannerUrl;

  CertificateModel({
    required this.id,
    required this.namaSertifikat,
    required this.lembaga,
    required this.pdfUrl,
    required this.bannerUrl,
  });

  factory CertificateModel.fromJson(Map<String, dynamic> json) =>
      CertificateModel(
        id: json["id"],
        namaSertifikat: json["nama_sertifikat"],
        lembaga: json["lembaga"],
        pdfUrl: json["pdf_url"],
        bannerUrl: json["banner_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_sertifikat": namaSertifikat,
        "lembaga": lembaga,
        "pdf_url": pdfUrl,
        "banner_url": bannerUrl,
      };
}
