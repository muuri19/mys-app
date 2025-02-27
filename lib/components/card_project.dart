import 'package:flutter/material.dart';
import 'package:mys/common/widgets/custom_elevated_button.dart';

class CardProject extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  const CardProject(
      {super.key,
      required this.image,
      required this.title,
      required this.date});

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
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomElevatedButton(text: "Detail", onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
