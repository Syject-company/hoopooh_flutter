import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/future/presentation/widgets/splash_body_widget.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';

class SplashScreen extends StatelessWidget {
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
              titleText: S.of(context).splash_screen_title_1,
              subTitleText: S.of(context).splash_screen_sub_title_1,
              page: 1),
          SplashBodyWidget(
              img:
                  "assets/images/splash_screen_images/splash_screen_image_2.png",
              titleText: S.of(context).splash_screen_title_2,
              subTitleText: S.of(context).splash_screen_sub_title_1,
              page: 2),
          SplashBodyWidget(
              img:
                  "assets/images/splash_screen_images/splash_screen_image_3.png",
              titleText: S.of(context).splash_screen_title_3,
              subTitleText: S.of(context).splash_screen_sub_title_1,
              page: 3),
        ],
      ),
    );
  }
}
