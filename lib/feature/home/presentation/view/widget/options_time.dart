import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';

class OptionsTime extends StatefulWidget {
  const OptionsTime({super.key});

  @override
  State<OptionsTime> createState() => _OptionsTimeState();
}

class _OptionsTimeState extends State<OptionsTime> {
  String selectedOption = "";
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RadioListTile(
          value: "طشة صباحية",
          groupValue: selectedOption,
          title: Text(
            "طشة صباحية",
            style: Styles.textStyle20s.copyWith(color: kTextSecondColor),
            textDirection: TextDirection.rtl, // تغيير الاتجاه
          ),

          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return kSelectColor; // selected circle color
            }
            return kUnSelectColor; // unselected circle color
          }),
        ),
        RadioListTile(
          value: "طشة مسائية",
          groupValue: selectedOption,
          title: Text(
            "طشة مسائية",
            style: Styles.textStyle20s.copyWith(color: kTextSecondColor),
            textDirection: TextDirection.rtl, // تغيير الاتجاه
          ),

          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return kSelectColor; // selected circle color
            }
            return kUnSelectColor; // unselected circle color
          }),
        ),
        RadioListTile(
          value: "طشة يوم كامل",
          groupValue: selectedOption,
          title: Text(
            "طشة يوم كامل",
            style: Styles.textStyle20s.copyWith(color: kTextSecondColor),
            textDirection: TextDirection.rtl, // تغيير الاتجاه
          ),

          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return kSelectColor; // selected circle color
            }
            return kUnSelectColor; // unselected circle color
          }),
        ),

      ],
    );
  }
}
