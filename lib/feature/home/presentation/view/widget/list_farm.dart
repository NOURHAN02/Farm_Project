import 'package:flutter/material.dart';
import 'package:framer_project/feature/home/presentation/view/widget/container_background.dart';

class ListFarm extends StatelessWidget {
  const ListFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Center(child: ContainerBackground());
          }),
    );
  }
}
