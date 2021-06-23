import 'package:flutter/material.dart';
import 'package:hoopooh/app/utils/utils.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool isObscureText;
  final bool isSuffixIcon;
  final String? suffixIconAsset;

  const TextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.keyboardType,
      this.isObscureText = false,
      this.isSuffixIcon = false,
      this.suffixIconAsset})
      : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _securePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.keyboardType,
        obscureText: widget.isSuffixIcon == false ? false : _securePassword,
        decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: HoopoohColors.LOGIN_BORDER_COLOR),
          ),
          border: UnderlineInputBorder(),
          suffixIcon: widget.isSuffixIcon == true
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _securePassword = !_securePassword;
                    });
                  },
                  icon: Image.asset(
                      "assets/icons/login_page_icons/password_view_icon.png"))
              : null,
          hintText: widget.hintText,
          hintStyle: HoopoohTextStyle.text12pt,
        ));
  }
}
