import 'package:flutter/material.dart';
import 'package:nurse_job/screens/explore.dart';
import 'package:nurse_job/screens/myshifts.dart';
import 'package:nurse_job/screens/profile.dart';
import 'package:nurse_job/screens/timesheet.dart';

import '../bottomnavigation_widgets/custom_bottom_navigation_bar.dart';


class PageSwitcher extends StatefulWidget {
  const PageSwitcher({ Key? key }) : super(key: key);

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {

  int _selectedIndex = 0;

  _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          [
            Explore(),
            TimeSheet(),
            MyShifts(),
            Profile()
          ][_selectedIndex],
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
    );
  }
}