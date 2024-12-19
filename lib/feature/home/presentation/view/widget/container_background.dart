import 'package:flutter/material.dart';
import 'package:framer_project/feature/home/presentation/view/widget/details_home_view_body.dart';
import 'package:framer_project/feature/home/presentation/view/widget/farm_item.dart';

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsHomeViewBody(),),);
        },
        child: Container(
           width: 317,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.50),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child:const FramerItem(),
        ),
      ),
    );
  }
}
