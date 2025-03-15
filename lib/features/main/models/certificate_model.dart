import 'dart:convert';

List<CertificateModel> certificateModelFromJson(String str) =>
    List<CertificateModel>.from(
        json.decode(str).map((x) => CertificateModel.fromJson(x)));

String certificateModelToJson(List<CertificateModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CertificateModel {
  String namaSertifikat;
  String lembaga;
  String date;
  String bannerUrl;
  String deskripsi;

  CertificateModel({
    required this.namaSertifikat,
    required this.lembaga,
    required this.date,
    required this.bannerUrl,
    required this.deskripsi,
  });

  factory CertificateModel.fromJson(Map<String, dynamic> json) =>
      CertificateModel(
        namaSertifikat: json["nama_sertifikat"],
        lembaga: json["lembaga"],
        date: json["date"],
        bannerUrl: json["banner_url"],
        deskripsi: json["deskripsi"],
      );

  Map<String, dynamic> toJson() => {
        "nama_sertifikat": namaSertifikat,
        "lembaga": lembaga,
        "date": date,
        "banner_url": bannerUrl,
        "deskripsi": deskripsi,
      };
}
