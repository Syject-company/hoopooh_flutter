import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:sizer/sizer.dart';

class VerifTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool isObscureText;
  final bool isSuffixIcon;
  final VoidCallback? onTap;
  final TextAlign textAlign;
  final bool textStyleVerifCode;
  final TextEditingController? controller;

  const VerifTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    this.isObscureText = false,
    this.isSuffixIcon = false,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.textStyleVerifCode = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        style: textStyleVerifCode != true
            ? HoopoohTextStyle.text18ptBold
            : HoopoohTextStyle.text24ptBold,
        textAlign: textAlign,
        keyboardType: keyboardType,
        obscureText: isObscureText,
        decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: HoopoohColors.LOGIN_BORDER_COLOR),
          ),
          border: UnderlineInputBorder(),
          suffixIcon: isSuffixIcon == true
              ? Padding(
                  padding: EdgeInsets.all(2.h),
                  child: InkWell(
                    onTap: () => onTap,
                    child: SvgPicture.asset(
                      HoopoohAssets.CANCEL_ICON,
                      height: 1.h,
                    ),
                  ),
                )
              : null,
          hintText: hintText,
        ));
  }
}
