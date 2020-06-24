import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class People extends StatelessWidget {
  final String name;
  final String title;
  final bool isSelected;

  People({this.name, this.title, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
        width: constraints.maxWidth,
        decoration: BoxDecoration(
          color: isSelected ? Colors.purpleAccent.withOpacity(0.05) : Colors.transparent,
          border: Border(
            right: isSelected ? BorderSide(color: Colors.purpleAccent, width: 4.0) : BorderSide(color: Colors.transparent ,width: 0.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.montserrat(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade800,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
