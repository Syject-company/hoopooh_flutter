import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoopooh/app/modules/verification_forgot_pass_page/controllers/verification_forgot_pass_page_controller.dart';
import 'package:hoopooh/app/utils/assets.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/text_fields_widgets/text_fields_widgets.dart';
import 'package:hoopooh/app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class VerificationForgotPassPageView extends StatelessWidget {
  final controller = Get.put(VerificationForgotPassPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(top: 15.h, bottom: 15.h, left: 15.w, right: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: SvgPicture.asset(
                HoopoohAssets.FORGOT_PASS_ICON,
                height: 22.h,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              HoopoohStrings.FORGOT_PASSWORD.tr,
              style: HoopoohTextStyle.textPrimariColor20ptBold,
            ),
            Text(HoopoohStrings.ENTER_YOUR_EMAIL_HOW_TO_CHANGE.tr,
                textAlign: TextAlign.start, style: HoopoohTextStyle.text14pt),
            TextFieldWidget(
              keyboardType: TextInputType.emailAddress,
              hintText: HoopoohStrings.EMAIL.tr,
            ),
            Center(
              child: RoundedButtonHoopooh(
                labelText: HoopoohStrings.RECOVER_PASSWORD.tr,
                onPressed: controller.onPressedRecoverPass,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
