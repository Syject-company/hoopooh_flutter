import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/constants.dart';
import 'package:hoopooh_flutter/future/presentation/widgets/bottom_navigation_bar.dart';
import 'package:hoopooh_flutter/future/presentation/widgets/events_widget.dart';
import 'package:hoopooh_flutter/generated/l10n.dart';

import '../../../../app_color.dart';

class HomeParentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: bodyHomeParentsWidget(context, size),
        bottomNavigationBar: buildBottomNavigationBar(context));
  }

  Widget bodyHomeParentsWidget(BuildContext context, Size size) {
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
              padding: EdgeInsets.all(size.height * 0.02),
              child: _buildHomeParentButtonsWidget(size),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(size.height * 0.02),
                child: _bodyCenterHomeParentsWidget(context, size),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02,
                  left: size.height * 0.02,
                  bottom: size.height * 0.02),
              child: _bodyEventHomeParentsWidget(context, size),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _buildHomeParentButtonsWidget(Size size) {
    return Container(
      height: size.height * 0.17,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            height: size.width * 0.27,
            image: AssetImage('assets/images/home_screen_images/fox.png'),
          ),
          Image(
            height: size.width * 0.35,
            image: AssetImage('assets/images/home_screen_images/alex.png'),
          ),
          Image(
            height: size.width * 0.27,
            image: AssetImage(
                'assets/images/home_screen_images/schedule_icon.png'),
          )
        ],
      ),
    );
  }

  Widget _bodyCenterHomeParentsWidget(BuildContext context, Size size) {
    return Container(
      height: size.height * 0.455,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(50),
          topRight: const Radius.circular(50),
        ),
        color: Color(0xFFF6F5F5),
      ),
      padding: EdgeInsets.all(size.height * 0.03),
      child: Column(
        children: [
          Text("←|   May, 3   |→",
              style: TextStyle(fontSize: Dimension.FONT_SIZE_20)),
          SizedBox(
            height: size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Container(
                  width: size.height * 0.1,
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).mood,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimension.FONT_SIZE_18),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: size.height * 0.1,
                  width: size.height * 0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp.MOOD_FOOD_NAP_COLOR_BG,
                  ),
                  child: Image.asset(
                    'assets/icons/mood_icon.png',
                  ),
                ),
              ]),
              Column(children: [
                Container(
                  width: size.height * 0.1,
                  alignment: Alignment.center,
                  child: Text(S.of(context).food,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimension.FONT_SIZE_18)),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp.MOOD_FOOD_NAP_COLOR_BG,
                  ),
                  alignment: Alignment.center,
                  height: size.height * 0.1,
                  width: size.height * 0.1,
                  child: Image.asset(
                    'assets/icons/food_icon.png',
                  ),
                ),
              ]),
              Column(children: [
                Container(
                  width: size.height * 0.1,
                  alignment: Alignment.center,
                  child: Text(S.of(context).nap,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimension.FONT_SIZE_18)),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp.MOOD_FOOD_NAP_COLOR_BG,
                  ),
                  alignment: Alignment.center,
                  height: size.height * 0.1,
                  width: size.height * 0.1,
                  child: Image.asset(
                    'assets/icons/nap_icon.png',
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(children: [
                  Container(
                      color: Colors.green,
                      child: Text(S.of(context).behaviour)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Text(S.of(context).activities),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _bodyEventHomeParentsWidget(BuildContext context, Size size) {
    final List<String> items = ["Zoo excursion", 'Halloween'];
    return Container(
        height: 96,
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
                  backgroundColor: ColorApp.EVENTS_BG_COLOR,
                  child: Image.asset('assets/icons/event_add_button.png'),
                  onPressed: () {},
                ),
              );
            }));
  }
}
