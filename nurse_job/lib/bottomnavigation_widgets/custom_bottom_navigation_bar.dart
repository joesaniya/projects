import 'package:flutter/material.dart';
import '../theme/appcolor.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nurse_job/theme/appcolor.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  // final VoidCallback onItemTapped;
  // Function onItemTapped;
  final onItemTapped;
  CustomBottomNavigationBar({required this.selectedIndex, required this.onItemTapped});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              type: BottomNavigationBarType.shifting,
              unselectedItemColor: Appcolor.secondarysoft,
              currentIndex: widget.selectedIndex,
              onTap: widget.onItemTapped,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              elevation: 10.0,
              items: [
                (widget.selectedIndex == 0)
                    ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), title: Text('Explore',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700),))
                    : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('Explore',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                (widget.selectedIndex == 1)
                    ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Appcolor.secondary, height:14.58,width: 14.58), title: Text('Timesheet',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
                    : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Colors.grey[600], height:14.58,width: 14.58), title: Text('Timesheet',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                (widget.selectedIndex == 2)
                    ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Appcolor.secondary, height:14.58,width: 14.58), title: Text('My shifts',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
                    : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('My shifts',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
                (widget.selectedIndex == 3)
                    ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), title: Text('Profile',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
                    : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('Profile',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
              ],
            ),
        ),
      ),
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     // padding: EdgeInsets.only(left: 60, right: 60, bottom: 20),
  //     padding: EdgeInsets.all(0.0),
  //     color: Colors.transparent,
  //     // color: Colors.amber,
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(10),
  //       child: SizedBox(
  //         height: 70,
  //         child: BottomNavigationBar(
  //           type: BottomNavigationBarType.shifting,
  //           unselectedItemColor: Appcolor.secondarysoft,
  //           currentIndex: widget.selectedIndex,
  //           onTap: widget.onItemTapped,
  //           showSelectedLabels: true,
  //           showUnselectedLabels: true,
  //           elevation: 20.0,
  //           items: [
  //             (widget.selectedIndex == 0)
  //                 ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), title: Text('Explore',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700),))
  //                 : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('Explore',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
  //             (widget.selectedIndex == 1)
  //                 ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Appcolor.secondary, height:14.58,width: 14.58), title: Text('Timesheet',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
  //                 : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/timesheet.svg', color: Colors.grey[600], height:14.58,width: 14.58), title: Text('Timesheet',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
  //             (widget.selectedIndex == 2)
  //                 ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Appcolor.secondary, height:14.58,width: 14.58), title: Text('My shifts',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
  //                 : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/shifts.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('My shifts',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
  //             (widget.selectedIndex == 3)
  //                 ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Appcolor.secondary,height:14.58,width: 14.58,), title: Text('Profile',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Appcolor.secondary,fontWeight: FontWeight.w700)))
  //                 : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg', color: Colors.grey[600],height:14.58,width: 14.58), title: Text('Profile',style: TextStyle(fontFamily: 'PT Sans',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700))),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}