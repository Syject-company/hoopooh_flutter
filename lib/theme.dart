import 'package:flutter/material.dart';

import 'app_color.dart';

final kLightTheme = ThemeData.light().copyWith(
  primaryColor: ColorApp.PRIMARY_COLOR,
  scaffoldBackgroundColor: Color(0xFFFFFFFF),
  appBarTheme: AppBarTheme(color: Color(0xFFE5E5E5)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFF9F9F9), selectedItemColor: Color(0xFF000000)),
);
