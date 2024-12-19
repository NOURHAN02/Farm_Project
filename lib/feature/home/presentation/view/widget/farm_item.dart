import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:framer_project/core/utils/assets.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/widget/List_star.dart';

class FramerItem extends StatelessWidget {
  const FramerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              ),
              child: Image.asset(
                AssetImages.framerImage,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 6,
                left: 10,
                child: SvgPicture.asset(AssetImages.saveIcon)),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 30, top: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    "مزرعة الياســـمين",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "170-120 دينار",
                      style: Styles.textStyle12,
                    ),
                  ),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const Text(
                    "السلط - 3 غرف نوم - عائلي",
                    style: Styles.textStyle10,
                  ),
                  const Spacer(),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.left,
                      "/لكل ليلة",
                      textDirection: TextDirection.rtl,
                      style: Styles.textStyle10.copyWith(color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  ListStar(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
