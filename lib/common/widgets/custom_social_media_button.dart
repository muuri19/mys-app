import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSocialMediaButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  const CustomSocialMediaButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            FaIcon(
              icon,
              color: Colors.black,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
