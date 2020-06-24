import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_planner/widgets/People.dart';
import 'package:project_planner/widgets/ProjectItem.dart';

class ProjectsSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.18,
      padding: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
          color: Colors.grey.shade200,
          width: 1,
        )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Projects',
            style: GoogleFonts.montserrat(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            child: ExpansionTile(
              title: ProjectItem(
                title: 'Milestone',
                initial: '🌼',
                color: Colors.redAccent,
              ),
              tilePadding: const EdgeInsets.all(0.0),
              children: [
                People(isSelected: true, name: 'Sudhanshu', title: 'Software Developer'),
                People(isSelected: false, name: 'Payal', title: 'UI/UX Developer'),
                People(isSelected: false, name: 'Sourav', title: 'Database Engineer'),
              ],
            ),
          ),          
          Container(
            child: ExpansionTile(
              title: ProjectItem(
                title: 'Eclipse',
                initial: '🌘',
                color: Colors.purpleAccent,
              ),
              tilePadding: const EdgeInsets.all(0.0),
              children: [
                People(isSelected: false, name: 'Shubham', title: 'Automation Engineer'),
                People(isSelected: false, name: 'Vrushab', title: 'Sales Manager'),
              ],
            ),
          ),
          Container(
            child: ExpansionTile(
              title: ProjectItem(
                title: 'Sydney Corp.',
                initial: '⛅',
                color: Colors.blueAccent,
              ),
              tilePadding: const EdgeInsets.all(0.0),
            ),
          ),
          Divider(),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Icon(Icons.add, color: Colors.grey.shade600),
              SizedBox(
                width: size.width * 0.01,
              ),
              Text(
                'Add new project',
                style: GoogleFonts.montserrat(
                    fontSize: 16.0, color: Colors.grey.shade600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
