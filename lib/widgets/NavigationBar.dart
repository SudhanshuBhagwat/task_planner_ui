import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Project Planner', style: GoogleFonts.montserrat(fontSize: 34.0, fontWeight: FontWeight.bold)),
          SizedBox(width: size.width * 0.04),
          Text('Projects', style: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.black)),
          SizedBox(width: size.width * 0.02),
          Text('Team', style: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.grey.shade400)),
          Spacer(),
          Text('Bhagwat Sudhanshu', style: GoogleFonts.montserrat(fontSize: 18.0)),
          SizedBox(width: size.width * 0.02),
          Container(
            child: Text('SB', style: GoogleFonts.montserrat(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
          ),
        ],
      ),
    );
  }
}