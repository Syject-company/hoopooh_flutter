import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/future/presentation/pages/login_screens/login_screen.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';

import '../../../app_color.dart';
import '../../../constants.dart';

class SplashBodyWidget extends StatelessWidget {
  final String img;
  final String titleText;
  final String subTitleText;
  final int page;

  const SplashBodyWidget(
      {Key key,
      @required this.img,
      @required this.titleText,
      @required this.subTitleText,
      @required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: _height * 0.06,
        bottom: _height * 0.06,
        left: _width * 0.14,
        right: _width * 0.14,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: _height * 0.27,
            child: Stack(children: [
              Container(
                  width: _width * 0.5,
                  height: _height * 0.23,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFF1FDFF))),
              Positioned(
                left: _width * 0.065,
                bottom: 0,
                child: Container(
                    height: _height * 0.23,
                    child: Image.asset(img)),
              ),
            ]),
          ),
          Container(
            child: Text(
              titleText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorApp.PRIMARY_COLOR,
                fontSize: Dimension.FONT_SIZE_24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Text(
              subTitleText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Dimension.FONT_SIZE_14,
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: ColorApp.PRIMARY_COLOR,
                textStyle: TextStyle(
                    fontSize: Dimension.FONT_SIZE_14,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(S.of(context).skip),
            ),
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          page == 1 ? Color(0xFF20B6DF) : Color(0xFFB1E6F4))),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          page == 2 ? Color(0xFF20B6DF) : Color(0xFFB1E6F4))),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          page == 3 ? Color(0xFF20B6DF) : Color(0xFFB1E6F4))),
            ],
          )),
        ],
      ),
    );
  }
}
