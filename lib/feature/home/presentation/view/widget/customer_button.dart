import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';

class CustomerButton extends StatelessWidget {
  const CustomerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0,bottom: 30.0),
      child: SizedBox(
        width: 334,
        height: 56,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: kSelectColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
          onPressed: () {},
          child: Text(
            'طششني',
            style: Styles.textStyle24.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
