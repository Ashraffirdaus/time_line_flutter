import 'package:flutter/material.dart';
import 'package:time_line_flutter/widgets/my_time_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            //start timeline
            MyTimeLine(
              isFirst: true,
              isLast: false,
              isPast: true,
              taskCompleted: "Task Done",
            ),
            //middle timeline
            MyTimeLine(
                isFirst: false,
                isLast: false,
                isPast: true,
                taskCompleted: "Task Completed"),
            //end timeline
            MyTimeLine(
                isFirst: false,
                isLast: false,
                isPast: false,
                taskCompleted: "Task Not Yet Done"),
          ],
        ),
      ),
    );
  }
}
