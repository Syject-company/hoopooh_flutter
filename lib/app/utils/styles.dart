import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HoopoohColors {
  static const Color MOOD_FOOD_NAP_COLOR_BG = Color(0xFFFEFDBA);
  static const Color PRIMARY_COLOR = Color(0xFF56CCF2);
  static const Color EVENTS_BG_COLOR = Color(0xFFF1FDFF);
  static const Color EVENTS_REMIND_BUTTON_BG_COLOR = Color(0xFFBFEDFB);
  static const Color MAIN_TEXT_COLOR = Color(0xFF030303);
  static const Color LOGIN_BORDER_COLOR = Color(0xFFA3EBFF);
  static const Color SPLASH_SCREEN_POINT_CHOOSE_COLOR = Color(0xFF20B6DF);
  static const Color SPLASH_SCREEN_POINT_NOT_CHOOSE_COLOR = Color(0xFFB1E6F4);
  static const Color DIVIDER_COLOR = Color(0xFF423737);
  static const Color ROUNDED_BUTTON_TEXT_COLOR = Color(0xFF4D4D4D);
  static const Color OUTSIDE_ALLERT_DIALOGCOLOR = Color(0x4D20B6DF);
}

class HoopoohTextStyle {
  //24pt Primary Color Bold
  static final TextStyle textPrimariColor24ptBold = GoogleFonts.poppins(
    color: HoopoohColors.PRIMARY_COLOR,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );

  // 20pt Primary Color Bold
  static final TextStyle textPrimariColor20ptBold = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: HoopoohColors.PRIMARY_COLOR,
  );
  // 18pt Primary Color
  static final TextStyle textPrimariColor18pt = GoogleFonts.poppins(
    color: HoopoohColors.PRIMARY_COLOR,
    fontSize: 12.sp,
  );
  // 18pt Primary Color bold
  static final TextStyle textPrimariColor18ptBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: HoopoohColors.PRIMARY_COLOR,
    fontSize: 12.sp,
  );
  // 14pt Primary Color Underline
  static final TextStyle textPrimariColor14ptUnderline = GoogleFonts.poppins(
      fontSize: 10.sp,
      fontWeight: FontWeight.bold,
      color: HoopoohColors.PRIMARY_COLOR,
      decoration: TextDecoration.underline);

  // 12pt Primary Color
  static final TextStyle textPrimariColor12ptBold = GoogleFonts.poppins(
    fontSize: 8.sp,
    fontWeight: FontWeight.bold,
    color: HoopoohColors.PRIMARY_COLOR,
  );

// 14pt Rounded Button Text Style Bold
  static final TextStyle textRoundedButtonTextStyle14ptBold =
      GoogleFonts.poppins(
    fontSize: 10.sp,
    color: HoopoohColors.ROUNDED_BUTTON_TEXT_COLOR,
    fontWeight: FontWeight.bold,
  );
  // 8pt Primary Color Underline
  static final TextStyle textPrimariColor8ptUnderline = GoogleFonts.poppins(
      fontSize: 5.sp,
      fontWeight: FontWeight.bold,
      color: HoopoohColors.PRIMARY_COLOR,
      decoration: TextDecoration.underline);

  static final TextStyle text24ptBold = GoogleFonts.poppins(
    color: HoopoohColors.MAIN_TEXT_COLOR,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );

  // 20pt
  static final TextStyle text20pt = GoogleFonts.poppins(
    color: HoopoohColors.MAIN_TEXT_COLOR,
    fontSize: 13.sp,
  );

  // 18pt Bold
  static final TextStyle text18ptBold = GoogleFonts.poppins(
    color: HoopoohColors.MAIN_TEXT_COLOR,
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
  );
  // 18pt Medium
  static final TextStyle text18ptMedium = GoogleFonts.poppins(
    color: HoopoohColors.MAIN_TEXT_COLOR,
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
  );
  // 14pt
  static final TextStyle text14pt = GoogleFonts.poppins(
    color: HoopoohColors.MAIN_TEXT_COLOR,
    fontSize: 10.sp,
  );

  // 12pt MAIN Text Color
  static final TextStyle text12pt = GoogleFonts.poppins(
    fontSize: 8.sp,
    color: HoopoohColors.MAIN_TEXT_COLOR,
  );
  // 12pt Main Color Light
  static final TextStyle text12ptLight = GoogleFonts.poppins(
    fontSize: 8.sp,
    fontWeight: FontWeight.w200,
    color: HoopoohColors.MAIN_TEXT_COLOR,
  );
  //8pt Bold
  static final TextStyle text8ptBold = GoogleFonts.poppins(
    fontSize: 5.sp,
    fontWeight: FontWeight.bold,
    color: HoopoohColors.MAIN_TEXT_COLOR,
  );
}
