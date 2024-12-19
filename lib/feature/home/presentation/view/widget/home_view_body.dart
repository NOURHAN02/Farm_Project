import 'package:flutter/material.dart';
import 'package:framer_project/feature/home/presentation/view/widget/home_app_bar.dart';
import 'package:framer_project/feature/home/presentation/view/widget/list_farm.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeAppBar(),
          ListFarm(),

        ],
      ),
    );
  }
}
