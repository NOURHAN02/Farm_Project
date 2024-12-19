import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/assets.dart';
import 'package:framer_project/core/utils/styles.dart';

class DetailsLocation extends StatelessWidget {
  const DetailsLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0,bottom: 10.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "الموقع",
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 232,
              width: double.infinity,  // تأكد من أن العرض يملأ الشاشة بالكامل
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetImages.mapLocationImage),
                  fit: BoxFit.cover,  // لجعل الصورة تغطي كامل المساحة وتبقى متناسبة
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
