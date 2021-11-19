import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
   )
    
  );
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel=new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/pic1.jpg'),
          AssetImage('assets/images/pic1.jpg'),
          AssetImage('assets/images/pic1.jpg'),
          AssetImage('assets/images/pic1.jpg'),
          AssetImage('assets/images/pic1.jpg'),
          AssetImage('assets/images/pic1.jpg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        // dotColor: Colors.red,
        indicatorBgPadding: 8.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        
        actions: [
          new IconButton
          (
            onPressed: null, 
            icon:Icon(Icons.search),
            color: Colors.white,
          ),
          new IconButton
          (
            onPressed: null, 
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
          )
        ],
      ),

      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader
            (
              accountName: Text('Esther Jenslin'), 
              accountEmail: Text('estherjenslin99@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person),
                )
                ),
                decoration: new BoxDecoration(
                  color: Colors.red
                ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite)
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green),
              ),
            ),

          ],
          ),

      ),

      body: new ListView(
      children: [
      image_carousel,
      new Padding(padding: EdgeInsets.all(8.0),
      child: Text('Categories'),
      )
      
      ],),


      
    );
  }
}

