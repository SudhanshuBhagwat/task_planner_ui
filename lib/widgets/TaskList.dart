import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_planner/widgets/CustomReorder.dart';
import 'package:project_planner/widgets/Task.dart';

class TaskList extends StatelessWidget {
  final int items;
  final String cycle;

  TaskList({this.items, this.cycle});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cycle,
                    style: GoogleFonts.montserrat(
                        fontSize: 16.0, color: Colors.grey.shade800),
                  ),
                  Text(
                    '$items',
                    style: GoogleFonts.montserrat(
                        fontSize: 16.0, color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.665,
              child: CustomReorder(
                onReorder: (oldIndex, newIndex) {},
                children: List.generate(
                  items,
                  (index) => Task(key: ValueKey(index)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension Order on ReorderableListView {}
