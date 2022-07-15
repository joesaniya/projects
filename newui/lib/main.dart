// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newui/Screens/progress.dart';
import 'package:newui/theme/theme.dart';
import 'package:underline_indicator/underline_indicator.dart';

import 'Screens/meals.dart';
import 'Screens/recipes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.black,
      // systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: Colors.white, //status bar color
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
  runApp(MaterialApp
  (
    debugShowCheckedModeBanner: false,
    home:Progress()));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold
      (
        backgroundColor: Appcolor.background,
        key: _scaffoldKey,
        appBar: AppBar
        (
          // shape: RoundedRectangleBorder
          // (
          //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
          // ),
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          elevation: 0,
          // centerTitle: true,
          title: const Text(
            'Nutrition',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 38,
                color: Colors.black),
          ),
          bottom: PreferredSize(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    // indicatorColor: Appcolor.secondary,
                    indicator: UnderlineIndicator(
                        strokeCap:
                            StrokeCap.round, // Set your line endings.
                        borderSide: BorderSide(
                          color: Appcolor.datebg,
                          width: 4,
                        ),
                        insets: EdgeInsets.only(bottom: 0)),
                        indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    // unselectedLabelColor: Colors.black.withOpacity(0.6),
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Appcolor.datetext,
                        fontSize: 24),
                    tabs: const [
                      Tab(text: 'Meals'),
                      Tab(text: 'Recipes'),
                      // Tab(text: 'App Questions'),
                    ],
                  ),
                ),
              ],
            ),
            preferredSize: const Size(70, 70),
          ),
          
        ),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Progress(),
              ),
              // CalendarEventsPage(),
              // Recipes()
             Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/Images/logo.jpeg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    )
              //
              
            ]),
      ),
        );
  }
}