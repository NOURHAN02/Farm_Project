import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/model.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/widget/item_feature_farm.dart';

class ItemsFeaturesFarm extends StatelessWidget {
  const ItemsFeaturesFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
              itemCount: itemFeaturesList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ItemFeaturesFarm(
                    itemFeatures: itemFeaturesList[index],
                  ),
                );
              }),
        ),
        const SizedBox(
          width: 40,
        ),
        Expanded(
          flex: 1,
          child: ListView.builder(
              itemCount: itemFeatureList2.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ItemFeaturesFarm(
                    itemFeatures: itemFeatureList2[index],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
