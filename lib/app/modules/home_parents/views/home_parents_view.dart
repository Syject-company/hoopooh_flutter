import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:hoopooh/app/widgets/widgets.dart';

import '../controllers/home_parents_controller.dart';

class HomeParentsView extends GetView<HomeParentsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodyHomeParentsWidget(),
        bottomNavigationBar: buildBottomNavigationBar(context));
  }

  Widget bodyHomeParentsWidget() {
    return SafeArea(
      child: Stack(children: [
        Positioned(
          top: -7,
          child: TextButton(
              onPressed: () {},
              child: Image.asset("assets/icons/menu_button.png")),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(2.h),
              child: _buildHomeParentButtonsWidget(),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: _bodyCenterHomeParentsWidget(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 2.h, bottom: 2.h),
              child: _bodyEventHomeParentsWidget(),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _buildHomeParentButtonsWidget() {
    return Container(
      height: 17.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            height: 27.w,
            image: AssetImage('assets/images/home_screen_images/fox.png'),
          ),
          Image(
            height: 35.w,
            image: AssetImage('assets/images/home_screen_images/alex.png'),
          ),
          Image(
            height: 27.w,
            image: AssetImage(
                'assets/images/home_screen_images/schedule_icon.png'),
          )
        ],
      ),
    );
  }

  Widget _bodyCenterHomeParentsWidget() {
    return Container(
      height: 45.5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(50),
          topRight: const Radius.circular(50),
        ),
        color: Color(0xFFF6F5F5),
      ),
      padding: EdgeInsets.all(3.h),
      child: Column(
        children: [
          Text("←|   May, 3   |→", style: HoopoohTextStyle.text20pt),
          SizedBox(
            height: 2.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Container(
                    width: 12.w,
                    alignment: Alignment.center,
                    child: Text(
                      HoopoohStrings.MOOD.tr,
                      style: HoopoohTextStyle.text18ptBold,
                    )),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 10.h,
                  width: 10.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HoopoohColors.MOOD_FOOD_NAP_COLOR_BG,
                  ),
                  child: Image.asset(
                    'assets/icons/mood_icon.png',
                  ),
                ),
              ]),
              Column(children: [
                Container(
                  width: 12.w,
                  alignment: Alignment.center,
                  child: Text(
                    HoopoohStrings.FOOD.tr,
                    style: HoopoohTextStyle.text18ptBold,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HoopoohColors.MOOD_FOOD_NAP_COLOR_BG,
                  ),
                  alignment: Alignment.center,
                  height: 10.h,
                  width: 10.h,
                  child: Image.asset(
                    'assets/icons/food_icon.png',
                  ),
                ),
              ]),
              Column(children: [
                Container(
                  width: 12.w,
                  alignment: Alignment.center,
                  child: Text(
                    HoopoohStrings.NAP.tr,
                    style: HoopoohTextStyle.text18ptBold,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HoopoohColors.MOOD_FOOD_NAP_COLOR_BG,
                  ),
                  alignment: Alignment.center,
                  height: 10.h,
                  width: 10.h,
                  child: Image.asset(
                    'assets/icons/nap_icon.png',
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(
            height: 2.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(children: [
                  Container(child: Text(HoopoohStrings.BEHAVIOUR)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Text(HoopoohStrings.ACTIVITIES),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _bodyEventHomeParentsWidget() {
    final List<String> items = ["Zoo excursion", 'Halloween'];
    return Container(
        height: 10.5.h,
        child: ListView.separated(
            itemCount: items.length + 1,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => SizedBox(width: 16),
            itemBuilder: (context, index) {
              if (index < items.length) {
                return EventsWidget(
                    titleEvent: items[index],
                    dateEvent: "Mo. 11:00 AM — 4:00 PM");
              }
              return SizedBox(
                height: 71,
                child: FloatingActionButton(
                  backgroundColor: HoopoohColors.EVENTS_BG_COLOR,
                  child: Image.asset('assets/icons/event_add_button.png'),
                  onPressed: () {},
                ),
              );
            }));
  }
}
