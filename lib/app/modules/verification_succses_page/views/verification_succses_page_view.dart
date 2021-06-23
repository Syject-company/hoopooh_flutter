import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoopooh/app/utils/assets.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class VerificationSuccsesPageView extends StatelessWidget {
  const VerificationSuccsesPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(top: 15.h, bottom: 30.h, left: 24.w, right: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              HoopoohAssets.VERIF_SUCCSES_ICON,
              height: 22.h,
            ),
            Text(
              HoopoohStrings.VERIF_SUCCESSFUL.tr,
              textAlign: TextAlign.center,
              style: HoopoohTextStyle.textPrimariColor20ptBold,
            ),
            Text(HoopoohStrings.YOU_NOW_FULL_ACCESS.tr,
                textAlign: TextAlign.center, style: HoopoohTextStyle.text14pt),
            RoundedButtonHoopooh(
              labelText: HoopoohStrings.NEXT.tr,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
