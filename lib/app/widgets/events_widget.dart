import 'package:flutter/material.dart';
import 'package:hoopooh/app/utils/utils.dart';
import 'package:sizer/sizer.dart';

class EventsWidget extends StatelessWidget {
  final String titleEvent;
  final String dateEvent;

  const EventsWidget(
      {Key? key, required this.titleEvent, required this.dateEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 10,
        height: 10.5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10),
              bottomLeft: const Radius.circular(10)),
          color: HoopoohColors.PRIMARY_COLOR,
        ),
      ),
      Container(
        width: 264,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: const Radius.circular(10),
              bottomRight: const Radius.circular(10)),
          color: HoopoohColors.EVENTS_BG_COLOR,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleEvent,
                    style: HoopoohTextStyle.textPrimariColor18ptBold),
                Text(
                  dateEvent,
                  style: HoopoohTextStyle.text14pt,
                )
              ],
            ),
            Container(
              height: 3.5.h,
              child: FloatingActionButton(
                backgroundColor: HoopoohColors.EVENTS_REMIND_BUTTON_BG_COLOR,
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
