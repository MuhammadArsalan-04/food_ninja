import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';
import 'package:food_ninja/presentations/elements/custom_text.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  Resources.kPin,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: 'Your Location',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffF6F6F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: CustomText(
                  text: 'Set Location',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
