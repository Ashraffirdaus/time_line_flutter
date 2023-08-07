import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String taskCompleted;
  const MyTimeLine(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: TimelineTile(
            isFirst: isFirst,
            isLast: isLast,

            //decorate the lines
            beforeLineStyle: LineStyle(
              color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
            ),
            //decorate the icon
            indicatorStyle: IndicatorStyle(
              width: 40,
              color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
              iconStyle: IconStyle(
                iconData: Icons.done,
                color: isPast ? Colors.white : Colors.deepPurple.shade100,
              ),
            ),
            endChild: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                margin:const EdgeInsets.all(25),
                padding: const EdgeInsets.all(25),
                decoration:  BoxDecoration(
                  color: isPast?Colors.deepPurple: Colors.deepPurple.shade100
                ),
                child: GestureDetector(
                  child: Text(
                    taskCompleted,
                  ),
                ),
              ),
            )));
  }
}
