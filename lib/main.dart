import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/feature/home/presentation/view/widget/details_home_view_body.dart';

import 'feature/home/presentation/view/details_home_view.dart';
import 'feature/navigetor_bar/presentation/view/navigator_bar.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) =>const MyApp(), // Wrap your app
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: Colors.red,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: kTextPrimaryColor,
          ),
        ),
      ),

      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home: const NavigatorBarHome(),
    );
  }
}
