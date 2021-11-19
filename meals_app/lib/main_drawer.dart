import 'package:flutter/material.dart';
import 'package:meals_app/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler)
  {
    return ListTile(
            leading: Icon(icon,size: 26,color: Colors.black54,),
            title: Text(title,style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
            ),
            ),
            onTap: tapHandler,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            
            child: Text('Cooking Up!',
              style: TextStyle
              (
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          buildListTile
          (
            'Meals', 
            Icons.restaurant,
            (){
              Navigator.of(context).pushReplacementNamed('/');
              // Navigator.of(context).pushNamed('/');
            }
          ),
          buildListTile
          (
            'Filters', 
            Icons.settings,(){
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
              // Navigator.of(context).pushNamed(FiltersScreen.routeName);
            }
          ),
          
        ],
      ),
    );
  }
}