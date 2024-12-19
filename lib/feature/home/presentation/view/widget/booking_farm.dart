import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/widget/calendar_view.dart';

import '../../../../../core/utils/constant.dart';

class BookingFarm extends StatelessWidget {
  const BookingFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "احجز طشتك",
                  style: Styles.textStyle20,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.info_outline,
                  color: kInfoColor,
                )
              ],
            ),
            CalendarView(),
          ],
        ),
      ),
    );
  }
}
