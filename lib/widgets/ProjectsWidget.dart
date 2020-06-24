import 'package:flutter/material.dart';
import 'package:project_planner/widgets/ProjectDashboard.dart';
import 'package:project_planner/widgets/ProjectsSideBar.dart';

class ProjectsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 48.0, right: 24.0, top: 24.0),
      child: Row(
        children: [
          ProjectsSideBar(),
          ProjectDashboard(),
        ],
      ),
    );
  }
}