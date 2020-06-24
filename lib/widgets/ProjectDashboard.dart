import 'package:flutter/material.dart';
import 'package:project_planner/widgets/TaskGroup.dart';
import 'package:project_planner/widgets/UserBar.dart';

class ProjectDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserBar(),
          SizedBox(height: size.height * 0.01),
          Divider(),
          TaskGroup(),
        ],
      ),
    );
  }
}
