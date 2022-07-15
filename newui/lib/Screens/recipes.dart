import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Recipes extends StatefulWidget {
  const Recipes({ Key? key }) : super(key: key);

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
   List menuList = [
    _MenuItem(FontAwesomeIcons.glasses, 'Glass','250 g'),
    _MenuItem(Icons.autorenew, 'Scoop','30 g'),
    _MenuItem(Icons.ac_unit, 'Glass','220 g'),
    _MenuItem(Icons.center_focus_strong, 'Small glass','150 g'),
    _MenuItem(Icons.question_answer, 'Can','250 g'),
    _MenuItem(Icons.phone, 'Peg','30 g'),
    _MenuItem(Icons.phone, 'Bottle','650 g'),
    _MenuItem(Icons.phone, 'Can','300 g'),
  ];
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent
            (
              maxCrossAxisExtent: 200,
              childAspectRatio: 3/2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
      // gridDelegate:
      //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      menuList[position].icon,
                      size: 50,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        menuList[position].title,
                        textAlign: TextAlign.left,
                        style: TextStyle(),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        menuList[position].subtitle,
                        textAlign: TextAlign.right,
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: menuList.length,
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String title;
  final String subtitle;

  _MenuItem(this.icon, this.title,this.subtitle);
}
