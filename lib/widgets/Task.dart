import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatelessWidget {
  final ValueKey key;
  static final int numberOfTasks = 5;
  static final int tasksDone = 2;
  final double percentComplete = tasksDone / numberOfTasks;  
  
  Task({this.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(bottom: 16.0),
          height: size.height * 0.1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Change the Logo',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Sample',
                        style: GoogleFonts.montserrat(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.8,
                        height: 6.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * 0.8 * percentComplete,
                        height: 6.0,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '$tasksDone/$numberOfTasks',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
