import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:framer_project/core/utils/assets.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/feature/home/presentation/view/widget/fram_details.dart';
import 'package:framer_project/feature/home/presentation/view/widget/list_image_details.dart';

import 'more_details_farm.dart';

class DetailsHomeViewBody extends StatelessWidget {
  const DetailsHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: SvgPicture.asset(AssetImages.saveIcon,color: kTextPrimaryColor,),
        )],
      ),
      body: const  SingleChildScrollView(
        child: Column(
          children: [
            ListImageDetails(),
            FarmDetails(),
            MoreDetailsFarm(),

          ],
        ),
      ),
    );
  }
}
