import 'package:flutter/material.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class SendCodeAllertDialog extends StatelessWidget {
  final VoidCallback onTapSMS;
  final VoidCallback onTapEmail;
  const SendCodeAllertDialog(
      {Key? key, required this.onTapSMS, required this.onTapEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Container(
        height: 27.h,
        width: 80.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              HoopoohStrings.SEND_CODE.tr,
              style: HoopoohTextStyle.text18ptMedium,
            ),
            Text(
              HoopoohStrings.SELECT_WAY.tr,
              style: HoopoohTextStyle.text12pt,
            ),
            Divider(
              color: HoopoohColors.DIVIDER_COLOR,
            ),
            InkWell(
              onTap: onTapSMS,
              child: Text(
                HoopoohStrings.VIA_SMS.tr,
                style: HoopoohTextStyle.textPrimariColor18pt,
              ),
            ),
            Divider(
              color: HoopoohColors.DIVIDER_COLOR,
            ),
            InkWell(
              onTap: onTapEmail,
              child: Text(
                HoopoohStrings.VIA_EMAIL.tr,
                style: HoopoohTextStyle.textPrimariColor18pt,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
          ],
        ),
      ),
    );
  }
}
