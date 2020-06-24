import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectItem extends StatelessWidget {
  final String initial;
  final Color color;
  final String title;

  ProjectItem({this.initial, this.color, this.title});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          child: Row(
            children: [
              Container(
                height: 45.0,
                width: 45.0,
                alignment: Alignment.center,
                child: Text(
                  initial,
                  style: TextStyle(fontSize: 20.0),
                ),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
              ),
              SizedBox(width: constraints.maxWidth * 0.06,),
              Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade900),
              ),
            ],
          ),
        );
      }
    );
  }
}
