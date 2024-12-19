import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:framer_project/core/utils/assets.dart';
import 'package:framer_project/core/utils/constant.dart';

class ListStar extends StatelessWidget {
  const ListStar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 30,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          Color ? starColor = index < 4 ? kSecondColor : null;
          return SvgPicture.asset(AssetImages.star,color: starColor,height: 14,width: 14,);
        },


      ),
    );
  }
}

