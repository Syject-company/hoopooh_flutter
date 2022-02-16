import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:sizer/sizer.dart';

class ConnectWithSocialNetworkWidget extends StatelessWidget {
  const ConnectWithSocialNetworkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(HoopoohStrings.CONNECT_WITH.tr,
            style: HoopoohTextStyle.textPrimariColor12ptBold),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print("click google");
              },
              child: SvgPicture.asset(
                HoopoohAssets.GOOGLE_ICON,
                height: 4.h,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            InkWell(
              onTap: () {
                print("click facebook");
              },
              child: SvgPicture.asset(
                HoopoohAssets.FACEBOOK_ICON,
                height: 4.h,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            InkWell(
              onTap: () {
                print("click apple");
              },
              child: SvgPicture.asset(
                HoopoohAssets.APPLE_ICON,
                height: 4.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
