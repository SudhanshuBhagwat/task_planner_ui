import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          padding: const EdgeInsets.only(left: 48.0, right: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sudhanshu', style: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.bold)),
                  Text('Software Developer', style: GoogleFonts.montserrat(fontSize: 16.0)),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        );
      }
    );
  }
}