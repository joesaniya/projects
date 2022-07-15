// import 'package:custom_navigator/custom_navigation.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurse_app_ui/theme/appcolor.dart';
import '../screens/explore.dart';
import '../screens/myshifts.dart';
import '../screens/profile.dart';
import '../screens/timesheet.dart';

import '../BottomNav_Widgets/custom_bottom_navigation_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


// class PageSwitcher extends StatefulWidget {
//   const PageSwitcher({ Key? key }) : super(key: key);

//   @override
//   State<PageSwitcher> createState() => _PageSwitcherState();
// }

// class _PageSwitcherState extends State<PageSwitcher> {
//   PersistentTabController _controller =PersistentTabController(initialIndex: 0);

// //Screens for each nav items.
//   List<Widget> _NavScreens() {
//     return [
//      Explore(),
//      TimeSheet(),
//      MyShifts(),
//      Profile()
      
//     ];
//   }
//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//        icon: Icon(Icons.home),
//         title: ("Home"),
//         activeColorPrimary: Colors.red,
//         activeColorSecondary: Colors.green,
//         inactiveColorPrimary: Colors.yellow,
//         inactiveColorSecondary: Colors.pink
//         // activeColor: CupertinoColors.activeBlue,
//         // inactiveColor: CupertinoColors.systemGrey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.favorite),
//         title: ("OFFERS"),
//         activeColorPrimary: Colors.red,
//         activeColorSecondary: Colors.green,
//         inactiveColorPrimary: Colors.yellow,
//         inactiveColorSecondary: Colors.pink
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.person_pin),
//         title: ("Help"),
//         activeColorPrimary: Colors.red,
//         activeColorSecondary: Colors.green,
//         inactiveColorPrimary: Colors.yellow,
//         inactiveColorSecondary: Colors.pink
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.local_activity),
//         title: ("ProfileScreen"),
//        activeColorPrimary: Colors.red,
//         activeColorSecondary: Colors.green,
//         inactiveColorPrimary: Colors.yellow,
//         inactiveColorSecondary: Colors.pink
//       ),
//  PersistentBottomNavBarItem(
//         icon: Icon(Icons.card_travel),
//         title: ("Cart"),
//         activeColorPrimary: Colors.red,
//         activeColorSecondary: Colors.green,
//         inactiveColorPrimary: Colors.yellow,
//         inactiveColorSecondary: Colors.pink
//       ),

//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
      
//     );
//   }
// }


class PageSwitcher extends StatefulWidget {
  const PageSwitcher({ Key? key }) : super(key: key);

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {

  int _selectedIndex = 0;

  _onItemTapped(int? index)
  {
    setState(() {
      _selectedIndex=index!;
    });
  }

  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
      scaffold: Scaffold(
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
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Appcolor.secondarysoft,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                elevation: 10.0,
                items: [
                  (_selectedIndex == 0)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), title: Text('Explore',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700),))
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('Explore',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                  (_selectedIndex == 1)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Appcolor.secondary, height:14.58,width: 14.58), title: Text('Timesheet',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Colors.grey[600], height:14.58,width: 14.58), title: Text('Timesheet',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                  (_selectedIndex == 2)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Appcolor.secondary, height:14.58,width: 14.58), title: Text('My shifts',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('My shifts',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                  (_selectedIndex == 3)
                      ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), title: Text('Profile',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
                      : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('Profile',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                ],
              ),
          ),
        ),
        // bottomNavigationBar: CustomBottomNavigationBar(
        //     onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
      ),
    );
  }
}