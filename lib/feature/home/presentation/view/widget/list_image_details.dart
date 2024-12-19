import 'package:flutter/material.dart';
import 'package:framer_project/feature/home/presentation/view/widget/item_image_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ListImageDetails extends StatefulWidget {
  const ListImageDetails({super.key});

  @override
  State<ListImageDetails> createState() => _ListImageDetailsState();
}

class _ListImageDetailsState extends State<ListImageDetails> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3.0, left: 3.0),
      child: Column(
        children: [
          SizedBox(
            height: 207,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ItemImageDetails();
              },
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: const Color(0xffBFBFBF).withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 5,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.black,
                dotColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
