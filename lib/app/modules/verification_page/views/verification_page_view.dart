import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/text_fields_widgets/verif_text_field_widget.dart';
import 'package:hoopooh/app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import '../controllers/verification_page_controller.dart';

class VerificationPageView extends StatelessWidget {
  final String? email;
  final controller = Get.put(VerificationPageController());
  VerificationPageView({Key? key, this.email}) : super(key: key);

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
                top: 20.h, bottom: 35.h, left: 20.w, right: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  email != null
                      ? HoopoohStrings.EMAIL.tr
                      : HoopoohStrings.MOBILE_NUMBER.tr,
                  style: HoopoohTextStyle.textPrimariColor20ptBold,
                ),
                Text(
                    email != null
                        ? HoopoohStrings.CONFIRM_YOUR_EMAIL.tr
                        : HoopoohStrings.COUNTRY_CODE_AND_MOBILE_NUMBER.tr,
                    textAlign: TextAlign.center,
                    style: HoopoohTextStyle.text14pt),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      email != null
                          ? HoopoohStrings.YOUR_EMAIL.tr
                          : HoopoohStrings.YOUR_NUMBER.tr,
                      style: HoopoohTextStyle.text8ptBold,
                    ),
                    email != null
                        ? VerifTextFieldWidget(
                            keyboardType: TextInputType.emailAddress,
                            hintText: email!,
                            isSuffixIcon: true,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: VerifTextFieldWidget(
                                  keyboardType: TextInputType.number,
                                  hintText:
                                      HoopoohStrings.START_PHONE_NUMBER.tr,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Expanded(
                                flex: 8,
                                child: VerifTextFieldWidget(
                                  keyboardType: TextInputType.number,
                                  hintText: "81  4432  9692",
                                  isSuffixIcon: true,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
                RoundedButtonHoopooh(
                  labelText: HoopoohStrings.NEXT.tr,
                  onPressed: controller.onPressedNext,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
