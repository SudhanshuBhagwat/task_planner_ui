import 'package:flutter/material.dart';
import 'package:project_planner/widgets/TaskList.dart';

class TaskGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 42.0, top: 24.0),
      child: SingleChildScrollView(
        child: Row(
          children: [
            TaskList(items: 5, cycle: 'TODO'),
            SizedBox(width: size.width * 0.02),
            TaskList(items: 1, cycle: 'DEVELOPMENT',),
            SizedBox(width: size.width * 0.02),
            TaskList(items: 2, cycle: 'DONE'),
          ],
        ),
      ),
    );
  }
}
