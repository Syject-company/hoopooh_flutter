import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoopooh/app/modules/login_screen/views/login_screen_view.dart';
import 'package:hoopooh/app/utils/utils.dart';

import 'package:sizer/sizer.dart';

class SplashBodyWidget extends StatelessWidget {
  final String img;
  final String titleText;
  final String subTitleText;
  final int page;

  const SplashBodyWidget(
      {Key? key,
      required this.img,
      required this.titleText,
      required this.subTitleText,
      required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 6.h,
        horizontal: 14.w,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 27.h,
            child: Stack(children: [
              Container(
                  height: 23.h,
                  width: 50.w,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: HoopoohColors.EVENTS_BG_COLOR)),
              Positioned(
                left: 6.5.w,
                bottom: 0,
                child: Container(height: 23.h, child: Image.asset(img)),
              ),
            ]),
          ),
          Container(
            child: Text(titleText,
                textAlign: TextAlign.center,
                style: HoopoohTextStyle.textPrimariColor24ptBold),
          ),
          Container(
            child: Text(subTitleText,
                textAlign: TextAlign.center, style: HoopoohTextStyle.text14pt),
          ),
          InkWell(
              onTap: () => Get.offAll(() => LoginScreenView(
                    isFirstLogin: true,
                  )),
              child: Text(
                HoopoohStrings.SKIP.tr,
                style: HoopoohTextStyle.textPrimariColor14ptUnderline,
              )),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: page == 1
                          ? HoopoohColors.SPLASH_SCREEN_POINT_CHOOSE_COLOR
                          : HoopoohColors
                              .SPLASH_SCREEN_POINT_NOT_CHOOSE_COLOR)),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: page == 2
                          ? HoopoohColors.SPLASH_SCREEN_POINT_CHOOSE_COLOR
                          : HoopoohColors
                              .SPLASH_SCREEN_POINT_NOT_CHOOSE_COLOR)),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: page == 3
                          ? HoopoohColors.SPLASH_SCREEN_POINT_CHOOSE_COLOR
                          : HoopoohColors
                              .SPLASH_SCREEN_POINT_NOT_CHOOSE_COLOR)),
            ],
          )),
        ],
      ),
    );
  }
}
