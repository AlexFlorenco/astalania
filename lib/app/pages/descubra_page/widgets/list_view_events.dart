import 'package:flutter/material.dart';

import '../../../models/event.dart';
import 'item_event.dart';

class ListViewEvents extends StatelessWidget {
  ListViewEvents({super.key});
  final eventList = EventList().eventList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: eventList.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (BuildContext context, int i) {
          return ItemEvent(
            id: i,
            image: eventList[i].image,
            title: eventList[i].title,
            local: eventList[i].local,
            date: eventList[i].date,
          );
        },
      ),
    );
  }
}
