import '/screens/explore.dart';
import '/screens/myshifts.dart';
import '/screens/profile.dart';
import '/screens/timesheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/appcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({ Key? key }) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  late List<Map<String,Object>> _pages;
  int _selectedPageIndex=0;

  @override
  void initState()
  {
    _pages=[
      {
        'page':Explore(),
        'title':'Explore'
      },
      {
        'page':TimeSheet(),
        'title':'TimeSheet'
      },
      {
        'page':MyShifts(),
        'title':'My Shifts'
      },
      {
        'page':Profile(),
        'title':'Profile'
      },
    ];
    super.initState();
  }


  void _selectPage(int index)
  {
    setState(() {
      _selectedPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: ClipRRect(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              ),
            ],
          ),
        child: BottomNavigationBar
        (
            type: BottomNavigationBarType.shifting,
            unselectedItemColor: Appcolor.secondarysoft,
            unselectedLabelStyle: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color:Colors.black,fontWeight: FontWeight.w700),
            selectedLabelStyle: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.red,fontWeight: FontWeight.w700),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            elevation: 10.0,
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
           items: 
                [
                  (_selectedPageIndex == 0)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), label: 'Explore')
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.black,height:14.58,width: 14.58), label: 'Explore'),
                  (_selectedPageIndex== 1)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Appcolor.secondary, height:14.58,width: 14.58), label: 'TimeSheet')
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Colors.grey[600], height:14.58,width: 14.58), label: 'TimeSheet'),
                  (_selectedPageIndex == 2)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Appcolor.secondary, height:14.58,width: 14.58), label: 'My Shifts')
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Colors.grey[600],height:14.58,width: 14.58), label: 'My Shifts'),
                  (_selectedPageIndex == 3)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), label: 'Profile')
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Colors.grey[600],height:14.58,width: 14.58), label: 'Profile'),
                ],
        ),
      ),
      
    )
    );
  }
}