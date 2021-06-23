import 'package:flutter/material.dart';
import 'package:hoopooh/app/utils/strings.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget buildBottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/navbar/chat_icon_on.png', height: 3.5.h),
      label: HoopoohStrings.BOTTOM_NAVIGATION_CHAT.tr,
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/navbar/home_icon_off.png', height: 3.5.h),
      label: HoopoohStrings.BOTTOM_NAVIGATION_HOME.tr,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/navbar/setting_icon_off.png',
        height: 3.5.h,
      ),
      label: HoopoohStrings.BOTTOM_NAVIGATION_SETTING.tr,
    ),
  ]);
}
