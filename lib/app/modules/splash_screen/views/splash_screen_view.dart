import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/widgets.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          SplashBodyWidget(
              img:
                  "assets/images/splash_screen_images/splash_screen_image_1.png",
              titleText: HoopoohStrings.SPLASH_SCREEN_TITLE_1.tr,
              subTitleText: HoopoohStrings.SPLASH_SCREEN_SUB_TITLE_1.tr,
              page: 1),
          SplashBodyWidget(
              img:
                  "assets/images/splash_screen_images/splash_screen_image_2.png",
              titleText: HoopoohStrings.SPLASH_SCREEN_TITLE_2.tr,
              subTitleText: HoopoohStrings.SPLASH_SCREEN_SUB_TITLE_1.tr,
              page: 2),
          SplashBodyWidget(
              img:
                  "assets/images/splash_screen_images/splash_screen_image_3.png",
              titleText: HoopoohStrings.SPLASH_SCREEN_TITLE_3.tr,
              subTitleText: HoopoohStrings.SPLASH_SCREEN_SUB_TITLE_1.tr,
              page: 3),
        ],
      ),
    );
  }
}
