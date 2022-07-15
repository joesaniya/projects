import 'package:flutter/material.dart';
import 'package:stat_bottom_tab/navigator.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            developer.log(
                'On Will called ${navigatorKeys[_pageIndex]!.currentState!.context.widget}');
            // return !await navigatorKeys[_pageIndex].currentState.context;
            return !await Navigator.maybePop(
                navigatorKeys[_pageIndex]!.currentState!.context);
            // Navigator.pop(navigatorKeys[_pageIndex].currentState.context);
          },
          child: IndexedStack(
            index: _pageIndex,
            children: <Widget>[
              NavigatorPage(
                child: Text('Home'),
                navigatorKey: navigatorKeys[0],
              ),
              NavigatorPage(
                child: Text('Business'),
                navigatorKey: navigatorKeys[1],
              ),
              NavigatorPage(
                child: Text('Technology'),
                navigatorKey: navigatorKeys[2],
              ),
              NavigatorPage(
                child: Text('Education'),
                navigatorKey: navigatorKeys[3],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            title: Text('Technology'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Education'),
          ),
        ],
        currentIndex: _pageIndex,
        onTap: (int index) {
          setState(
            () {
              _pageIndex = index;
            },
          );
        },
      ),
    );
  }
}