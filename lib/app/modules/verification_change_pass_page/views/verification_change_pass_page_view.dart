import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoopooh/app/modules/verification_change_pass_page/controllers/verification_change_pass_page_controller.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/text_fields_widgets/text_fields_widgets.dart';
import 'package:hoopooh/app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class VerificationChangePassPageView extends StatelessWidget {
  final controller = Get.put(VerificationChangePassPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: 1.h,
              left: 3.w,
              child: InkWell(
                onTap: controller.onTapBackIcon,
                child: SvgPicture.asset(
                  HoopoohAssets.BACK_ICON,
                  height: 3.h,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(
                top: 20.h, bottom: 30.h, left: 20.w, right: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  HoopoohStrings.CHANGE_PASS.tr,
                  style: HoopoohTextStyle.textPrimariColor20ptBold,
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      hintText: HoopoohStrings.OLD_PASS.tr,
                      keyboardType: TextInputType.visiblePassword,
                      isSuffixIcon: true,
                    ),
                    TextFieldWidget(
                      hintText: HoopoohStrings.NEW_PASS.tr,
                      keyboardType: TextInputType.visiblePassword,
                      isSuffixIcon: true,
                    ),
                    TextFieldWidget(
                      hintText: HoopoohStrings.CONFIRM_PASS.tr,
                      keyboardType: TextInputType.visiblePassword,
                      isSuffixIcon: true,
                    ),
                  ],
                ),
                RoundedButtonHoopooh(
                  labelText: HoopoohStrings.CHANGE_PASS.tr,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
