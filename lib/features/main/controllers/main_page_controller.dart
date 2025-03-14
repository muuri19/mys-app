import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mailto/mailto.dart';
import 'package:mys/features/main/models/certificate_model.dart';
import 'package:mys/utils/constans/text_strings.dart';
import 'package:mys/utils/error_handler.dart';

import 'package:url_launcher/url_launcher.dart';

class MainPageController {
  final Uri _urlGithub = Uri.parse(TTexts.githubLink);
  final Uri _urlInstagram = Uri.parse(TTexts.instagramLink);
  final Uri _urlSaweria = Uri.parse(TTexts.saweriaLink);

  Future<void> launchUrlGithub() async {
    try {
      if (!await launchUrl(_urlGithub)) {
        throw Exception('Could not launch $_urlGithub');
      }
    } catch (error) {
      throw handleError(error);
    }
  }

  Future<void> launchUrlInstagram() async {
    try {
      if (!await launchUrl(_urlInstagram)) {
        throw Exception('Could not launch $_urlInstagram');
      }
    } catch (error) {
      throw handleError(error);
    }
  }

  Future<void> launchUrlSaweria() async {
    try {
      if (!await launchUrl(_urlSaweria)) {
        throw Exception('Could not launch $_urlSaweria');
      }
    } catch (error) {
      throw handleError(error);
    }
  }

  Future<void> launchMailto() async {
    try {
      final mailtoLink = Mailto(
        to: [TTexts.mailTo],
      );

      final uri = Uri.parse('$mailtoLink');

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw Exception('Tidak dapat meluncurkan email.');
      }
    } catch (error) {
      throw handleError(error);
    }
  }

  Future<void> whatsappMe() async {
    try {
      if (!await launchUrl(Uri.parse(TTexts.whatsappMe))) {
        throw Exception('Could not launch ${TTexts.whatsappMe}');
      }
    } catch (error) {
      throw handleError(error);
    }
  }

  Future<List<CertificateModel>> loadCertificate() async {
    String data = await rootBundle.loadString(TTexts.jsonCertificate);
    List<dynamic> json = jsonDecode(data);
    return json.map((e) => CertificateModel.fromJson(e)).toList();
  }
}
