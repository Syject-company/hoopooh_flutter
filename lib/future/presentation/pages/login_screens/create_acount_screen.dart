import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/future/presentation/widgets/connect_with_social_network_widger.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';

import '../../../../app_color.dart';
import '../../../../constants.dart';

class CreateAccountScreen extends StatefulWidget {
  final bool login;

  const CreateAccountScreen({Key key, this.login = true}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _securePassword = true;
  bool _secureConfirmPassword = true;
  bool teacherBoxValue = false;
  bool termsBoxValue = false;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
        padding: EdgeInsets.only(
              top: _height * 0.03,
              bottom: _height * 0.03,
              left: _width * 0.12,
              right: _width * 0.12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: _height * 0.08,
                image: AssetImage(
                    'assets/icons/login_page_icons/login_page_icon_fox.png'),
              ),
              SizedBox(
                height: _height * 0.01,
              ),
              Text(
                S.of(context).create_account,
                style: TextStyle(
                  color: ColorApp.PRIMARY_COLOR,
                  fontSize: Dimension.FONT_SIZE_20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: teacherBoxValue,
                      activeColor: ColorApp.LOGIN_BORDER_COLOR,
                      onChanged: (bool newValue) {
                        setState(() {
                          teacherBoxValue = newValue;
                        });
                      }),
                  Text(
                    "I am a teacher",
                    style: TextStyle(
                      color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                      fontSize: Dimension.FONT_SIZE_12,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: S.of(context).full_name,
                        enabledBorder: new UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorApp.LOGIN_BORDER_COLOR),
                        ),
                        hintStyle: TextStyle(
                            color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                            fontSize: Dimension.FONT_SIZE_12)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: S.of(context).start_phone_number,
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorApp.LOGIN_BORDER_COLOR),
                              ),
                              hintStyle: TextStyle(
                                  color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                                  fontSize: Dimension.FONT_SIZE_12)),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.PADDING_8,
                      ),
                      Expanded(
                        flex: 6,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: S.of(context).phone_number,
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorApp.LOGIN_BORDER_COLOR),
                              ),
                              hintStyle: TextStyle(
                                  color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                                  fontSize: Dimension.FONT_SIZE_12)),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: S.of(context).email,
                        enabledBorder: new UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorApp.LOGIN_BORDER_COLOR),
                        ),
                        hintStyle: TextStyle(
                            color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                            fontSize: Dimension.FONT_SIZE_12)),
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _securePassword,
                    decoration: InputDecoration(
                        enabledBorder: new UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorApp.LOGIN_BORDER_COLOR),
                        ),
                        border: UnderlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _securePassword = !_securePassword;
                              });
                            },
                            icon: Image.asset(
                                "assets/icons/login_page_icons/password_view_icon.png")),
                        hintText: S.of(context).password,
                        hintStyle: TextStyle(
                            color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                            fontSize: Dimension.FONT_SIZE_12)),
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _secureConfirmPassword,
                    decoration: InputDecoration(
                        enabledBorder: new UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorApp.LOGIN_BORDER_COLOR),
                        ),
                        border: UnderlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _secureConfirmPassword = !_secureConfirmPassword;
                              });
                            },
                            icon: Image.asset(
                                "assets/icons/login_page_icons/password_view_icon.png")),
                        hintText: S.of(context).confirm_password,
                        hintStyle: TextStyle(
                            color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                            fontSize: Dimension.FONT_SIZE_12)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: termsBoxValue,
                          activeColor: ColorApp.LOGIN_BORDER_COLOR,
                          onChanged: (bool newValue) {
                            setState(() {
                              termsBoxValue = newValue;
                            });
                          }),
                      Text(
                        S.of(context).i_agry_with,
                        style: TextStyle(
                          color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                          fontSize: Dimension.FONT_SIZE_12,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("create account");
                        },
                        child: Text(
                          S.of(context).terms_conditions,
                          style: TextStyle(
                            color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                            fontSize: Dimension.FONT_SIZE_12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: _height * 0.075,
                width: _width * 0.56,
                child: TextButton(
                    child: Text(S.of(context).lets_combat,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF423737),
                            fontWeight: FontWeight.bold)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            ColorApp.LOGIN_BORDER_COLOR),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0),
                        ))),
                    onPressed: () => print("Let’s Combat!")),
              ),
              SizedBox(
                height: _height * 0.02,
              ),
              ConnectWithSocialNetworkWidget(),
              SizedBox(
                height: _height * 0.03,
              ),
              Column(
                children: [
                  Text(
                    S.of(context).already_have_an_account,
                    style: TextStyle(
                      color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                      fontSize: Dimension.FONT_SIZE_12,
                    ),
                  ),
                  SizedBox(
                    height: Dimension.PADDING_4,
                  ),
                  InkWell(
                    onTap: () {
                      print("create account");
                    },
                    child: Text(
                      S.of(context).login,
                      style: TextStyle(
                        color: ColorApp.PRIMARY_COLOR,
                        fontSize: Dimension.FONT_SIZE_12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
