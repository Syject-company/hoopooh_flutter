import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';

Widget buildBottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/navbar/chat_icon_on.png',height: 33),
      label: S.of(context).bottom_navigation_chat,
      backgroundColor: Color(0xFF101C45),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/navbar/home_icon_off.png',height: 33),
      label: S.of(context).bottom_navigation_home,
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/navbar/setting_icon_off.png',height: 33,),
      label: S.of(context).bottom_navigation_setting,
    ),
  ]);
}
