import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/widget/customer_button.dart';
import 'package:framer_project/feature/home/presentation/view/widget/options_time.dart';

class TimeFarm extends StatelessWidget {
  const TimeFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text(
                "فترة الطشة",
                style: Styles.textStyle20,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.info_outline,
                color: kInfoColor,
              )
            ],
          ),
          OptionsTime(),
          CustomerButton(),
        ],
      ),
    );
  }
}
