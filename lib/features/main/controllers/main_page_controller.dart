
import 'package:mailto/mailto.dart';
import 'package:mys/utils/constans/text_strings.dart';
import 'package:mys/utils/logging/logger.dart';
import 'package:open_file/open_file.dart';
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
    } catch (e) {
      print('Error launching GitHub: $e');
    }
  }

  Future<void> launchUrlInstagram() async {
    try {
      if (!await launchUrl(_urlInstagram)) {
        throw Exception('Could not launch $_urlInstagram');
      }
    } catch (e) {
      print('Error launching Instagram: $e');
    }
  }

  Future<void> launchUrlSaweria() async {
    try {
      if (!await launchUrl(_urlSaweria)) {
        throw Exception('Could not launch $_urlSaweria');
      }
    } catch (e) {
      print('Error launching Saweria: $e');
    }
  }

  Future<void> launchMailto() async {
    try {
      final mailtoLink = Mailto(
        to: [TTexts.mailTo],
      );
      await launch('$mailtoLink');
    } catch (e) {
      print('Error launching mailto: $e');
    }
  }


}
