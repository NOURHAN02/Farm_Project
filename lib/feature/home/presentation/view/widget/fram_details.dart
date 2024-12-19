import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/widget/List_star.dart';

class FarmDetails extends StatelessWidget {
  const FarmDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.0,right: 17.0,left: 17.0,bottom: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                "مزرعة الياســـمين",
                style: Styles.textStyle24.copyWith(color: kTextPrimaryColor),
                maxLines: null,
              ),
              const Spacer(),
              Text(
                "دينار\t 170",
                style: Styles.textStyle18.copyWith(color: kPrimaryColor),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                "محافظة البلقاء - السلط - ام جوزة",
                style: Styles.textStyle12m.copyWith(color: kTextPrimaryColor),
                maxLines: null,
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
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("4.8", style: Styles.textStyle26),
              ListStar(), // ثم ListStar
            ],
          ),
          const Divider(
            thickness: 7,
          ),
        ],
      ),
    );
  }
}
