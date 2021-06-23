import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/text_fields_widgets/text_fields_widgets.dart';
import 'package:hoopooh/app/widgets/widgets.dart';

import '../controllers/login_screen_controller.dart';
import 'package:sizer/sizer.dart';

class LoginScreenView extends StatelessWidget {
  final bool isFirstLogin;
  final controller = Get.put(LoginScreenController());

  LoginScreenView({Key? key, required this.isFirstLogin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 7.h,
            horizontal: 12.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                HoopoohAssets.FOX_ICON,
                height: 8.h,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                isFirstLogin == true
                    ? HoopoohStrings.LOG_IN.tr
                    : HoopoohStrings.WELCOME_BACK.tr,
                style: HoopoohTextStyle.textPrimariColor20ptBold,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                isFirstLogin == true
                    ? ""
                    : HoopoohStrings.LOGIN_TO_CONTINUE_BATTLE.tr,
                style: HoopoohTextStyle.text12pt,
              ),
              SizedBox(
                height: 5.h,
              ),
              Column(
                children: [
                  TextFieldWidget(
                    keyboardType: TextInputType.emailAddress,
                    hintText: HoopoohStrings.EMAIL.tr,
                  ),
                  TextFieldWidget(
                    hintText: HoopoohStrings.PASSWORD.tr,
                    keyboardType: TextInputType.visiblePassword,
                    isSuffixIcon: true,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: controller.onTapForgotPass,
                        child: Text(HoopoohStrings.FORGOT_PASSWORD.tr,
                            style: HoopoohTextStyle.text12pt)),
                  )
                ],
              ),
              SizedBox(
                height: 11.h,
              ),
              RoundedButtonHoopooh(
                labelText: HoopoohStrings.LETS_COMBAT.tr,
                onPressed: () {
                  showDialog(
                      barrierColor: HoopoohColors.OUTSIDE_ALLERT_DIALOGCOLOR,
                      context: context,
                      builder: (_) => SendCodeAllertDialog(
                            onTapEmail: () {
                              Navigator.of(context).pop();
                              controller.onTapEmail();
                            },
                            onTapSMS: () {
                              Navigator.of(context).pop();
                              controller.onTapSMS();
                            },
                          ));
                },
              ),
              SizedBox(
                height: 5.h,
              ),
              ConnectWithSocialNetworkWidget(),
              SizedBox(
                height: 3.h,
              ),
              Column(
                children: [
                  Text(HoopoohStrings.DONT_HAVE_ACCOUNT.tr,
                      style: HoopoohTextStyle.text12pt),
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                    onTap: controller.onTapCreateAccount,
                    child: Text(HoopoohStrings.CREATE_ACCOUNT.tr,
                        style: HoopoohTextStyle.textPrimariColor12ptBold),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
