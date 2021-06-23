import 'package:flutter/material.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ConfirmPhoneAllertDialog extends StatelessWidget {
  final VoidCallback onTapOk;
  final VoidCallback onTapCancel;
  final String number;
  const ConfirmPhoneAllertDialog(
      {Key? key,
      required this.onTapOk,
      required this.onTapCancel,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Container(
        height: 23.h,
        width: 80.w,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    HoopoohStrings.PHONE_NUM_CONFR.tr,
                    style: HoopoohTextStyle.text18ptMedium,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Text(
                          HoopoohStrings.VERIF_CODE_FOLLOWING_NUM.tr,
                          textAlign: TextAlign.center,
                          style: HoopoohTextStyle.text12pt,
                        ),
                      ),
                      Text(number, style: HoopoohTextStyle.text12ptLight),
                    ],
                  ),
                  Container(
                    width: 80.w,
                    height: 0.5,
                    color: HoopoohColors.DIVIDER_COLOR,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: onTapCancel,
                    child: Container(
                      height: 6.h,
                      child: Center(
                        child: Text(
                          HoopoohStrings.CANCEL.tr,
                          textAlign: TextAlign.center,
                          style: HoopoohTextStyle.textPrimariColor18pt,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 6.h,
                  color: Colors.grey,
                ),
                Expanded(
                  child: InkWell(
                    onTap: onTapOk,
                    child: Container(
                      height: 6.h,
                      child: Center(
                        child: Text(
                          HoopoohStrings.OK.tr,
                          textAlign: TextAlign.center,
                          style: HoopoohTextStyle.textPrimariColor18pt,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
