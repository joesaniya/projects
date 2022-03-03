import 'package:flutter/material.dart';
import './main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName='/filters';

  final Function saveFilters;
  final Map<String, dynamic>currentFilters;

  FiltersScreen
  (
    this.currentFilters,
    this.saveFilters
  );

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenfree=false;
  bool _vegetarian=false;
  bool _vegan=false;
  bool _lactoseFree=false;

  @override
  initState()
  {
    _glutenfree=widget.currentFilters['gluten'];
    _vegetarian=widget.currentFilters['vegetarian'];
    _vegan=widget.currentFilters['vegan'];
    _lactoseFree=widget.currentFilters['lactose'];
    super.initState();
  }

 Widget _buildSwitchListTile(
   String title,
   String description,
   bool currentValue,
   final updateValue,
   )
 {
   return SwitchListTile(
     title: Text(title,style: TextStyle(color: Colors.blueGrey[300]),),
     value:currentValue,
     subtitle: Text(description,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
     onChanged: updateValue,
    //  inactiveThumbColor: Colors.yellowAccent,
    // activeTrackColor: Colors.tealAccent[100],
    // selectedTileColor: Colors.pinkAccent,
   );
     
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your\'s Filter'),
        actions: [
          IconButton
          (
            onPressed: (){
              final selectedFilters={
                'gluten':_glutenfree,
                'lactose':_lactoseFree,
                'vegan':_vegan,
                'vegetarian':_vegetarian,
              };
              widget.saveFilters(selectedFilters);
            }, 
            icon: Icon(Icons.save)
          ),
        ],
      ),
      drawer: MainDrawer(),
      body:Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,),
          ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text('Adjust your Meal Selection',
              // style: Theme.of(context).textTheme.subtitle1,
              style: TextStyle(
                color: Colors.redAccent,
                fontFamily:'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                 _buildSwitchListTile(
                   'Gluten-Free', 
                   'Only Includes Gluten-Free Meals.', 
                   _glutenfree, 
                    (newValue) {
                      setState(
                        () {
                          _glutenfree = newValue;
                        },
                      );
                    },
                   ),
                   _buildSwitchListTile(
                   'Lactose-Free', 
                   'Only Includes Lactose-Free Meals.', 
                   _lactoseFree, 
                    (newValue) {
                      setState(
                        () {
                          _lactoseFree = newValue;
                        },
                      );
                    },
                   ),
                   _buildSwitchListTile(
                   'Vegetarian', 
                   'Only Includes Veg Meals.', 
                    _vegetarian, 
                    (newValue) {
                      setState(
                        () {
                          _vegetarian = newValue;
                        },
                      );
                    },
                   ),
                   _buildSwitchListTile(
                   'Vegan', 
                   'Only Includes Vegan Meals.', 
                    _vegan, 
                    (newValue) {
                      setState(
                        () {
                          _vegan = newValue;
                        },
                      );
                    },
                   ),
                ],
              )
            ),
          ],
    ),
      ),
    );
  }
}