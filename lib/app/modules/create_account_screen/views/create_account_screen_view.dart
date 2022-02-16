import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/rounded_button.dart';
import 'package:hoopooh/app/widgets/text_fields_widgets/text_fields_widgets.dart';
import 'package:hoopooh/app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import '../controllers/create_account_screen_controller.dart';

class CreateAccountScreenView extends StatelessWidget {
  final controller = Get.put(CreateAccountScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 3.h,
            horizontal: 12.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                HoopoohAssets.FOX_ICON,
                height: 8.h,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                HoopoohStrings.CREATE_ACCOUNT.tr,
                style: HoopoohTextStyle.textPrimariColor20ptBold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Checkbox(
                        value: controller.teacherBoxValue.value,
                        activeColor: HoopoohColors.LOGIN_BORDER_COLOR,
                        onChanged: (rvalue) {
                          controller.teacherBoxValue.value = rvalue!;
                        }),
                  ),
                  Text(
                    HoopoohStrings.I_TEACHER.tr,
                    style: HoopoohTextStyle.text12pt,
                  )
                ],
              ),
              Column(
                children: [
                  TextFieldWidget(
                    keyboardType: TextInputType.name,
                    hintText: HoopoohStrings.FULL_NAME.tr,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFieldWidget(
                          keyboardType: TextInputType.number,
                          hintText: HoopoohStrings.START_PHONE_NUMBER.tr,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        flex: 6,
                        child: TextFieldWidget(
                          keyboardType: TextInputType.number,
                          hintText: HoopoohStrings.PHONE_NUMBER.tr,
                        ),
                      ),
                    ],
                  ),
                  TextFieldWidget(
                    keyboardType: TextInputType.emailAddress,
                    hintText: HoopoohStrings.EMAIL.tr,
                  ),
                  TextFieldWidget(
                    keyboardType: TextInputType.emailAddress,
                    hintText: HoopoohStrings.PASSWORD.tr,
                    isSuffixIcon: true,
                  ),
                  TextFieldWidget(
                    keyboardType: TextInputType.emailAddress,
                    hintText: HoopoohStrings.CONFIRM_PASSWORD.tr,
                    isSuffixIcon: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Checkbox(
                            value: controller.termsBoxValue.value,
                            activeColor: HoopoohColors.LOGIN_BORDER_COLOR,
                            onChanged: (newValue) {
                              controller.termsBoxValue.value = newValue!;
                            }),
                      ),
                      Text(
                        HoopoohStrings.I_AGREE_WITH.tr,
                        style: HoopoohTextStyle.text12pt,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () {
                          print("TERMS_CONDITIONS");
                        },
                        child: Text(HoopoohStrings.TERMS_CONDITIONS.tr,
                            style: HoopoohTextStyle.text12pt),
                      )
                    ],
                  ),
                ],
              ),
              RoundedButtonHoopooh(
                labelText: HoopoohStrings.CREATE_ACCOUNT.tr,
                onPressed: () {
                  print("create account");
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              ConnectWithSocialNetworkWidget(),
              SizedBox(
                height: 3.h,
              ),
              Column(
                children: [
                  Text(HoopoohStrings.ALREADY_HAVE_AN_ACCOUNT.tr,
                      style: HoopoohTextStyle.text12pt),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  InkWell(
                    onTap: controller.routeLoginScreen,
                    child: Text(
                      HoopoohStrings.LOGIN.tr,
                      style: HoopoohTextStyle.textPrimariColor12ptBold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
