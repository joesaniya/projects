import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurse_app_ui/screens/explore.dart';
import 'package:nurse_app_ui/screens/myshifts.dart';
import 'package:nurse_app_ui/screens/profile.dart';
import 'package:nurse_app_ui/screens/timesheet.dart';
import 'package:nurse_app_ui/theme/appcolor.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScaffold extends StatefulWidget {
  @override
  _HomeScaffoldState createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  PersistentTabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      Explore(),
      MyShifts(),
      TimeSheet(),
      Profile(),
    ];
  }

  // List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     _buildBottomNavBarItem('Explore', Icons.home),
  //     _buildBottomNavBarItem('TimeSheet', Icons.search),
  //     _buildBottomNavBarItem('My Shifts', Icons.message),
  //     _buildBottomNavBarItem('Profile', Icons.settings),
  //   ];
  // }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        // icon: SvgPicture.asset('assets/icons/search.svg',height: 14.58,width: 14.58,),
        title: ("Explore"),
        activeColorPrimary: Appcolor.secondary,
        inactiveColorPrimary: Appcolor.showing,
        inactiveColorSecondary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat_bubble_outline),
        title: ("Timesheet"),
        activeColorPrimary: Appcolor.secondary,
        inactiveColorPrimary: Appcolor.showing,
        inactiveColorSecondary: Colors.white,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => MainScreen2(),
        //     '/second': (context) => MainScreen3(),
        //   },
        // ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.calendar_today_outlined),
        title: ("My shifts"),
        activeColorPrimary: Appcolor.secondary,
        inactiveColorPrimary: Appcolor.showing,
        inactiveColorSecondary: Colors.white,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => MainScreen2(),
        //     '/second': (context) => MainScreen3(),
        //   },
        // ),
      ),
      PersistentBottomNavBarItem(
        // icon: SvgPicture.asset('assets/icons/profile.svg'),
        icon: FaIcon(FontAwesomeIcons.user),
        title: ("Profile"),
        activeColorPrimary: Appcolor.secondary,
        inactiveColorPrimary: Appcolor.showing,
        inactiveColorSecondary: Colors.white,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => MainScreen2(),
        //     '/second': (context) => MainScreen3(),
        //   },
        // ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      controller: _controller,
      screens: _buildScreens(),
      confineInSafeArea: true,
      itemCount: 4,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      customWidget: CustomNavBarWidget(
        items: _navBarsItems(),
        onItemSelected: (index) {
          setState(() {
            _controller!.index = index;
          });
        },
        selectedIndex: _controller!.index,
      ),
      // ),
    );
  }
}

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
       decoration: BoxDecoration(
        // color: Colors.pink,
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      alignment: Alignment.center,
      height: kBottomNavigationBarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null
                          ? item.activeColorPrimary
                          : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                          ? item.activeColorPrimary
                          : item.inactiveColorPrimary),
              child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                item.title.toString(),
                style: TextStyle(
                    color: isSelected
                        ? (item.activeColorSecondary == null
                            ? item.activeColorPrimary
                            : item.activeColorSecondary)
                        : item.inactiveColorPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0),
              )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      // height: 200,
      decoration: BoxDecoration(
        // color: Colors.black,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      child: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

PersistentBottomNavBarItem _buildBottomNavBarItem(String title, IconData icon) {
  return PersistentBottomNavBarItem(
    icon: Icon(icon),
    title: title,
    activeColorPrimary: Appcolor.secondary,
    inactiveColorPrimary: Colors.grey,
  );
}
