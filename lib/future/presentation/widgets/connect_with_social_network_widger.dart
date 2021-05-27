import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';

import '../../../app_color.dart';
import '../../../constants.dart';

class ConnectWithSocialNetworkWidget extends StatelessWidget {
  const ConnectWithSocialNetworkWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).connect_with,
          style: TextStyle(
            color: ColorApp.PRIMARY_COLOR,
            fontSize: Dimension.FONT_SIZE_12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: Dimension.PADDING_8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print("click google");
              },
              child: Image(
                height: 34,
                image: AssetImage(
                    'assets/icons/login_page_icons/google_login_icon.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                print("click facebook");
              },
              child: Image(
                height: 34,
                image: AssetImage(
                    'assets/icons/login_page_icons/facebook_login_icon.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                print("click apple");
              },
              child: Image(
                height: 34,
                image: AssetImage(
                    'assets/icons/login_page_icons/apple_login_icon.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
