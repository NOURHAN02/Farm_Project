import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/widget/booking_farm.dart';
import 'package:framer_project/feature/home/presentation/view/widget/details_location.dart';
import 'package:framer_project/feature/home/presentation/view/widget/items_features_farm.dart';
import 'package:framer_project/feature/home/presentation/view/widget/time_farm.dart';

class MoreDetailsFarm extends StatelessWidget {
  const MoreDetailsFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 18.0, bottom: 5.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "التلخيص",
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "مزرعة خلابة وجميلة تبعد عن العاصمة عمان 5 كيلو , اطلالة على الجبال توفر خدمة مميزة ومريحة - 3 غرف نوم - 2 حمام - مساحة 165 متر",
              style: Styles.textStyle12m.copyWith(color: kTextPrimaryColor),
              softWrap: true,
              maxLines: null,
              overflow: TextOverflow.visible,
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              "الخصائص",
              style: Styles.textStyle20,
            ),
            const ItemsFeaturesFarm(),
            const DetailsLocation(),
            const BookingFarm(),
            const TimeFarm(),
          ],
        ),
      ),
    );
  }
}
