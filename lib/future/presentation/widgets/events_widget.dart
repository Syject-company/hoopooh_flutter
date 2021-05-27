import 'package:flutter/material.dart';
import 'package:hoopooh_flutter/constants.dart';

import '../../../app_color.dart';

class EventsWidget extends StatelessWidget {
  final String titleEvent;
  final String dateEvent;

  const EventsWidget(
      {Key key, @required this.titleEvent, @required this.dateEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 10,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10),
              bottomLeft: const Radius.circular(10)),
          color: ColorApp.PRIMARY_COLOR,
        ),
      ),
      Container(
        width: 264,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: const Radius.circular(10),
              bottomRight: const Radius.circular(10)),
          color: ColorApp.EVENTS_BG_COLOR,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleEvent,
                    style: TextStyle(
                        fontSize: Dimension.FONT_SIZE_18,
                        color: ColorApp.PRIMARY_COLOR,
                        fontWeight: FontWeight.bold)),
                Text(
                  dateEvent,
                  style: TextStyle(
                    fontSize: Dimension.FONT_SIZE_14,
                  ),
                )
              ],
            ),
            Container(
              height: 33,
              child: FloatingActionButton(
                backgroundColor: ColorApp.EVENTS_REMIND_BUTTON_BG_COLOR,
                child: Image.asset('assets/icons/event_remind_button.png'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
