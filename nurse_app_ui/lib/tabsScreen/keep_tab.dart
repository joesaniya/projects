import 'package:flutter/material.dart';
import 'package:nurse_app_ui/screens/explore.dart';
import 'package:nurse_app_ui/screens/myshifts.dart';
import 'package:nurse_app_ui/screens/profile.dart';
import 'package:nurse_app_ui/screens/timesheet.dart';

class StaticTab extends StatefulWidget {
  const StaticTab({ Key? key }) : super(key: key);

  @override
  State<StaticTab> createState() => _StaticTabState();
}

class _StaticTabState extends State<StaticTab> {


   final List<Widget> _children = [
            Explore(),
            TimeSheet(),
            MyShifts(),
            Profile()
  ];
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Color(0xff303338),
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.yellow,
        // selectedLabelStyle: C,
        // unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          setState(() => _currentIndex = value);
          _pageController.jumpToPage(value);
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            title: Text('Orders'),
            icon: Icon(Icons.shopping_bag_sharp),
          ),
          BottomNavigationBarItem(
            title: Text('Dashboard'),
            icon: Icon(
              Icons.payment_outlined,
            ),
          ),
          BottomNavigationBarItem(
            // ignore: argument_type_not_assignable
            title: Text('Products'),
            icon: Icon(
              Icons.list_alt_outlined,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
        
      ),      
      body:
          // PageView(
          //   controller: _pageController,
          //   physics: NeverScrollableScrollPhysics(),
          //   children: _children,
          // ),
          _children[_currentIndex],
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: SizedBox(
          child: Text('Comming soon'),
          // EEfindButton(
          //     text: "LogOut",
          //     color: EEfindpartnerColorTheme.kColorOrangeSecondary,
          //     onPressed: () async {
          //       final SharedPreferences prefs =
          //           await SharedPreferences.getInstance();
          //       prefs.clear();
          //       AutoRouter.of(context).pushAndPopUntil(
          //           const PhoneAuthScreenRoute(),
          //           predicate: (val) => false);
          //     })
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}