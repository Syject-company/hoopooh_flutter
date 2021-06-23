import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

import 'app/utils/utils.dart';

void main() {
  //new commit
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      translations: TranslateHoopooh(),
      // ваши переводы
      locale: Locale('en', 'EN'),
      // перевод будет осуществлен в этой локализации
      fallbackLocale: Locale('en', 'US'),
      theme: kLightTheme,
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }));
}
