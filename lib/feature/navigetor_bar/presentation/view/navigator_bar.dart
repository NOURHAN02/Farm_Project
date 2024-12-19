import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:framer_project/core/utils/assets.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:framer_project/feature/home/presentation/view/home_view.dart';

class NavigatorBarHome extends StatefulWidget {
  const NavigatorBarHome({super.key});

  @override
  State<NavigatorBarHome> createState() => _NavigatorBarHomeState();
}

class _NavigatorBarHomeState extends State<NavigatorBarHome> {
  List<Widget> pages = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0),
              topRight: Radius.circular(28.0),
            )),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kSecondColor,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: Styles.textStyle12s,
          unselectedLabelStyle: Styles.textStyle12s,
          currentIndex: selectIndex,
          onTap: (value) {
            selectIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AssetImages.homeImage,
                  color: selectIndex == 0 ? kSecondColor : Colors.white,
                ),
                label: "الرئيسية"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AssetImages.bookingImage,
                  color: selectIndex == 1 ? kSecondColor : Colors.white,
                ),
                label: "حجوزاتي"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AssetImages.personImage,
                  color: selectIndex == 2 ? kSecondColor : Colors.white,
                ),
                label: "بياناتي")
          ],
        ),
      ),
    );
  }
}
