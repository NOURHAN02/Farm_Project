import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:framer_project/core/utils/assets.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          border: Border.all(color: kbBorderColor, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                AssetImages.filter,
                color: kTextPrimaryColor,
              ),
              const Text(
                "الرئيسية",
                style: Styles.textStyle26,
              ),
              const Icon(
                Icons.add_circle_outline_outlined,
                color: kTextPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
