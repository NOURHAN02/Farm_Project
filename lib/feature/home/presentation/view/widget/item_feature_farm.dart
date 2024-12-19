import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/model.dart';
import 'package:framer_project/core/utils/styles.dart';

class ItemFeaturesFarm extends StatelessWidget {
  const ItemFeaturesFarm({super.key, required this.itemFeatures});
  final ItemFeatures itemFeatures;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,left: 8.0,right: 8.0,bottom: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(itemFeatures.image, color: kTextPrimaryColor),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                itemFeatures.name,
                style: Styles.textStyle12m,
                overflow: TextOverflow.ellipsis,  // لمنع النص من التجاوز
              ),
            ),
          ],
        ),
      ),
    );
  }
}
