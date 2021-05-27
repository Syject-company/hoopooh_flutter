import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/future/presentation/widgets/connect_with_social_network_widger.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';
import '../../../../app_color.dart';
import '../../../../constants.dart';

class LoginScreen extends StatefulWidget {
  final bool firstLoginScreen;

  const LoginScreen({Key key, this.firstLoginScreen = true}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState(firstLoginScreen);
}

class _LoginScreenState extends State<LoginScreen> {
  bool _securePassword = true;
  final _firstLoginScreen;

  _LoginScreenState(this._firstLoginScreen);
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
        padding: EdgeInsets.only(
              top: _height * 0.07,
              bottom: _height * 0.07,
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
                height: _height * 0.05,
              ),
              Text(
                _firstLoginScreen==true?S.of(context).log_in:S.of(context).welcome_back,
                style: TextStyle(
                  color: ColorApp.PRIMARY_COLOR,
                  fontSize: Dimension.FONT_SIZE_20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: _height * 0.01,
              ),
              Text(
                _firstLoginScreen==true?"":S.of(context).login_to_continue_battle,
                style: TextStyle(
                  color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                  fontSize: Dimension.FONT_SIZE_12,
                ),
              ),

              SizedBox(
                height: _height * 0.05,
              ),
              Column(
                children: [
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
                  SizedBox(
                    height: Dimension.PADDING_8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          print("Forgot Password?");
                        },
                        child: Text(S.of(context).forgot_password,
                            style: TextStyle(
                              color: ColorApp.LOGIN_SCREEN_TEXT_COLOR,
                              fontSize: Dimension.FONT_SIZE_12,
                            ))),
                  )
                ],
              ),
              SizedBox(
                height: _height * 0.11,
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
                height: _height * 0.05,
              ),
              ConnectWithSocialNetworkWidget(),
              SizedBox(
                height: _height * 0.03,
              ),
              Column(
                children: [
                  Text(
                    S.of(context).dont_have_account,
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
                      S.of(context).create_account,
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
