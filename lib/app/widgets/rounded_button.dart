import 'package:flutter/material.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:sizer/sizer.dart';

class RoundedButtonHoopooh extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;
  const RoundedButtonHoopooh(
      {Key? key, required this.labelText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.5.h,
      width: 56.w,
      child: TextButton(
          child: Text(labelText,
              style: HoopoohTextStyle.textRoundedButtonTextStyle14ptBold),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  HoopoohColors.LOGIN_BORDER_COLOR),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36.0),
              ))),
          onPressed: onPressed),
    );
  }
}
