import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/assets.dart';

class ItemImageDetails extends StatelessWidget {
  const ItemImageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0, left: 5.0),
      child: AspectRatio(
        aspectRatio: 3 / 1.90,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            child: Image.asset(
              AssetImages.framerBoolImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
