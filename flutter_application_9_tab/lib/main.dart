
import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:  ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFF167F67),
    ),
    home:  ResponsavelProfilePage(),
  ));
}

class ResponsavelProfilePage extends StatefulWidget {
  @override
  _ResponsavelProfilePageState createState() => new _ResponsavelProfilePageState();
}

class _ResponsavelProfilePageState extends State<ResponsavelProfilePage> {

  int _count = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> _contatos = new List.generate(_count, (int i) => new ContactRow());

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('hi'),
        ),
        body: new LayoutBuilder(builder: (context, constraint) {
          final _maxHeight = constraint.biggest.height / 3;
          final _biggerFont = TextStyle(fontSize: _maxHeight / 6);

          return new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Nome',
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(20.0),
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Data de nascimento',
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(20.0),
                ),
                new Row(
                  children: _contatos,
                ),
                new FlatButton(
                    onPressed:  _addNewContactRow,
                  child: new Icon(Icons.add),
                ),
                //new ContactRow()
              ],
            ),
          );
        })
    );
  }

  void _addNewContactRow() {
    setState(() {
      _count = _count + 1;
    });
  }
}

class ContactRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContactRow();

}

class _ContactRow extends State<ContactRow> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child:
        new Column(
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: 'Contato',
                ),
              ),
              new Text("Tipo Contato: "),
              new DropdownButton(
                value: _currentContactType,
                items: _dropDownMenuItems,
                onChanged: changedDropDownItem,
              ),
              new Container(
                padding: new EdgeInsets.all(20.0),
              ),
            ]
        )
    );
  }

  List _contactTypes =
  ["Phone (SMS)", "Phone (Whatsapp)", "Email"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentContactType;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentContactType = null;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _contactTypes) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentContactType = selectedCity;
    });
  }
}


// import 'package:flutter/material.dart';
// void main() {
//   runApp( MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme:  ThemeData(
//       primaryColor: const Color(0xFF02BB9F),
//       primaryColorDark: const Color(0xFF167F67),
//       accentColor: const Color(0xFF167F67),
//     ),
//     home:  DropdownScreen(),
//   ));
// }
// class Item {
//   const Item(this.name,this.icon);
//   final String name;
//   final Icon icon;
// }
// class DropdownScreen extends StatefulWidget {
//   State createState() =>  DropdownScreenState();
// }
// class DropdownScreenState extends State<DropdownScreen> {
//   Item? selectedUser;
//   List<Item> users = <Item>[
//     const Item('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
//     const Item('Flutter',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
//     const Item('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
//     const Item('iOS',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home:  Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF167F67),
//           title: Text(
//             'Dropdown options',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body:  Center(
//           child:  DropdownButton<Item>(
//             hint:  Text("Select item"),
//             value: selectedUser,
//             onChanged: (Item? Value) {
//               setState(() {
//                 selectedUser = Value!;
//               });
//             },
//             items: users.map((Item user) {
//               return  DropdownMenuItem<Item>(
//                 value: user,
//                 child: Row(
//                   children: <Widget>[
//                     user.icon,
//                     SizedBox(width: 10,),
//                     Text(
//                       user.name,
//                       style:  TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(TestScreen());
// // }

// // class TestScreen extends StatefulWidget {
// //   const TestScreen({Key? key}) : super(key: key);

// //   @override
// //   createState() => _TestScreenState();
// // }

// // class _TestScreenState extends State<TestScreen> with SingleTickerProviderStateMixin {
// //   TabController? controller;
// //   late List<Tab> tabBars;
// //   late List<Widget> tabBarViews;
// //   final tabIconSize = 30.0;

// //   @override
// //   void initState() {
// //     controller = new TabController(vsync: this, length: 3);
// //     controller!.index = 1;
// //     tabBars = [
// //       Tab(icon: Icon(Icons.view_list, size: tabIconSize)),
// //       Tab(icon: Icon(Icons.account_circle, size: tabIconSize)),
// //       Tab(icon: Icon(Icons.shopping_cart, size: tabIconSize)),
// //     ];
// //     tabBarViews = [TestScreen1(), TestScreen2(), TestScreen3()];

// //     super.initState();
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     controller!.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     ThemeData theme = Theme.of(context);
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: Scaffold(
// //         bottomNavigationBar: Material(
// //           child: SafeArea(child: TabBar(controller: controller, tabs: tabBars)),
// //           color: theme.primaryColor,
// //         ),
// //         body: TabBarView(
// //           children: tabBarViews,
// //           controller: controller,
// //           physics: NeverScrollableScrollPhysics(),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TestScreen1 extends StatefulWidget {
// //   @override
// //   createState() => _TestScreen1State();
// // }

// // class _TestScreen1State extends State<TestScreen1> {
// //   @override
// //   void initState() {
// //     super.initState();
// //   }

// //    @override
// //   void dispose() {
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return new Scaffold(
// //         appBar: AppBar(
// //           title: Text('Testing1'),
// //         ),
// //         body: Center(
// //           child: Text("Test"),
// //         ));
// //   }
// // }

// // class TestScreen2 extends StatefulWidget {
// //   @override
// //   createState() => _TestScreen2State();
// // }

// // class _TestScreen2State extends State<TestScreen2> {
// //   @override
// //   void initState() {
// //     super.initState();
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return new Scaffold(
// //         appBar: AppBar(
// //           title: Text('Testing2'),
// //         ),
// //         body: Center(
// //           child: Text("Test"),
// //         ));
// //   }
// // }

// // class TestScreen3 extends StatefulWidget {
// //   @override
// //   createState() => _TestScreen3State();
// // }

// // class _TestScreen3State extends State<TestScreen3> {
// //   @override
// //   void initState() {
// //     super.initState();
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return new Scaffold(
// //         appBar: AppBar(
// //           title: Text('Testing3'),
// //         ),
// //         body: Center(
// //           child: Text("Test"),
// //         ));
// //   }
// // }