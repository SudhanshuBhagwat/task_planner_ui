import 'package:flutter/material.dart';
import 'package:project_planner/widgets/NavigationBar.dart';
import 'package:project_planner/widgets/ProjectsWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBar(),
          ProjectsWidget(),
        ],
      ),
    );
  }
}
