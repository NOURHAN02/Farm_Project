import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/styles.dart';

import '../../../../../core/utils/constant.dart';

class BookingFarm extends StatelessWidget {
  const BookingFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text("احجز طشتك",style: Styles.textStyle20,),
              const SizedBox(width: 10,),
              Icon(Icons.info_outline,color: kInfoColor,)
            ],
          ),

        ],
      ),
    );
  }
}
