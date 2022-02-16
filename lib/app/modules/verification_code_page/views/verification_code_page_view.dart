import 'package:flutter/material.dart';
import 'package:hoopooh/app/modules/verification_code_page/controllers/verification_code_page_controller.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/text_fields_widgets/verif_text_field_widget.dart';
import 'package:hoopooh/app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class VerificationCodePageView extends StatelessWidget {
  final controller = Get.put(VerificationCodePageController());
  final String emailOrNumber;

  VerificationCodePageView({Key? key, required this.emailOrNumber})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(top: 16.h, bottom: 35.h, left: 20.w, right: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              HoopoohStrings.VERIF_CODE.tr,
              style: HoopoohTextStyle.textPrimariColor20ptBold,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(HoopoohStrings.SMS_VERIF_CODE_HAS_BEEN.tr,
                textAlign: TextAlign.center, style: HoopoohTextStyle.text14pt),
            Text(
              emailOrNumber,
              style: HoopoohTextStyle.text18ptBold,
            ),
            InkWell(
              onTap: () => print(HoopoohStrings.RESEND),
              child: Text(
                HoopoohStrings.RESEND,
                style: HoopoohTextStyle.textPrimariColor8ptUnderline,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  HoopoohStrings.PIN_CODE.tr,
                  style: HoopoohTextStyle.text8ptBold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: VerifTextFieldWidget(
                        textStyleVerifCode: true,
                        textAlign: TextAlign.center,
                        isObscureText: true,
                        keyboardType: TextInputType.number,
                        hintText: '',
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: VerifTextFieldWidget(
                        textStyleVerifCode: true,
                        textAlign: TextAlign.center,
                        isObscureText: true,
                        keyboardType: TextInputType.number,
                        hintText: '',
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: VerifTextFieldWidget(
                        textStyleVerifCode: true,
                        textAlign: TextAlign.center,
                        isObscureText: true,
                        keyboardType: TextInputType.number,
                        hintText: '',
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: VerifTextFieldWidget(
                        textStyleVerifCode: true,
                        textAlign: TextAlign.center,
                        isObscureText: true,
                        keyboardType: TextInputType.number,
                        hintText: '',
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: VerifTextFieldWidget(
                        textStyleVerifCode: true,
                        textAlign: TextAlign.center,
                        isObscureText: true,
                        keyboardType: TextInputType.number,
                        hintText: '',
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: VerifTextFieldWidget(
                        textStyleVerifCode: true,
                        textAlign: TextAlign.center,
                        isObscureText: true,
                        keyboardType: TextInputType.number,
                        hintText: '',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            RoundedButtonHoopooh(
              labelText: HoopoohStrings.NEXT.tr,
              onPressed: controller.onPressedNext,
            ),
          ],
        ),
      ),
    ));
  }
}
