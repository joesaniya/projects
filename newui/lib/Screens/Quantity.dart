import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newui/theme/theme.dart';

class Quantity extends StatefulWidget {
  const Quantity({ Key? key }) : super(key: key);

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
   List menuList = [
    _MenuItem('Glass','250 g',Image.asset('assets/icons/glass1.png',color: Appcolor.quantitysub,)),
     _MenuItem('Scoop','30 g',Image.asset('assets/icons/scoop.png',color: Appcolor.quantitysub,)),
    //  _MenuItem('glass','220 g',Image.asset('assets/icons/glass1.png',color: Appcolor.quantitysub,)),
     _MenuItem('Small glass','150 g',Image.asset('assets/icons/glass.png',color: Appcolor.quantitysub,)),
    _MenuItem('can','250 g',Image.asset('assets/icons/Can.png',color: Appcolor.quantitysub,)),
    _MenuItem('Peg','350 g',Image.asset('assets/icons/peg.png',color: Appcolor.quantitysub,)),
    _MenuItem('Bottle','650 g',Image.asset('assets/icons/Bottle.png',color: Appcolor.quantitysub,)),
    _MenuItem('Can','300 g',Image.asset('assets/icons/Can.png',color: Appcolor.quantitysub,)),
    _MenuItem('Bowl','250 g',Image.asset('assets/icons/bowl.png',color: Appcolor.quantitysub,)),
    _MenuItem('Cup','310 g',Image.asset('assets/icons/cup.png',color: Appcolor.quantitysub,)),
    _MenuItem('Tablespoon','15 g',Image.asset('assets/icons/scoop.png',color: Appcolor.quantitysub,)),
    _MenuItem('Katori','150 g',Image.asset('assets/icons/ep_bowl.png',color: Appcolor.quantitysub,)),
    _MenuItem('Cup','40 g',Image.asset('assets/icons/cup.png',color: Appcolor.quantitysub,)),
    _MenuItem('Pint','350 g',Image.asset('assets/icons/outline_bottle.png',color: Appcolor.quantitysub,)),
    _MenuItem('Large Bowl','350 g',Image.asset('assets/icons/bowl.png',color: Appcolor.quantitysub,)),
    _MenuItem('Can','500 g',Image.asset('assets/icons/Can.png',color: Appcolor.quantitysub,)),
    _MenuItem('Tablespoon','5 g',Image.asset('assets/icons/scoop.png',color: Appcolor.quantitysub,)),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Appcolor.background,
          elevation: 0,
          // title: const Text(
          //   'Shift Details',
          //   style: TextStyle(
          //       fontFamily: 'Roboto',
          //       fontWeight: FontWeight.w700,
          //       fontSize: 18,
          //       color: Colors.black),
          // ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
             Navigator.pop(context);
            },
          ),
        ),
      ),
   

    body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          SizedBox
          (
            height: 10,
          ),
           Padding(
             padding: const EdgeInsets.only(left:20.0),
             child: Text(
              'Quantity Help',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  // fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Appcolor.quantityheader),
          ),
           ),
          SizedBox
          (
            height: 20,
          ),
           Padding(
             padding: const EdgeInsets.only(left:20.0),
             child: Text(
              'Understand our quantity suggestions better',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Appcolor.quantitysub),
          ),
           ),
           SizedBox
          (
            height: 20,
          ),
          Container(
           width: MediaQuery.of(context).size.width,
           height: 500,
          //  color: Colors.red,
              color: Appcolor.background,
            child:GridView.builder(
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
                  // elevation: 5,
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    // child: Icon(
                    //   menuList[position].image,
                    //   size: 30,
                    //   // color: Color.fromARGB(31, 136, 116, 147)
                    //   color: Appcolor.quantitysub,
                    //   // color: Appcolor.datetext,
                    // ),
                    // child:ImageIcon
                    // (
                    //   AssetImage(menuList[position].Icon.toString())
                    // )
                    child: menuList[position].image,
                    // Image
                    // (
                    //   image:
                    // )
                    // child: Icon(Icons.),
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
                        style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Appcolor.quantitysub),
                      ),
                    ),
                    Expanded(
                      child: Text(
                         menuList[position].subtitle,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Appcolor.quantitysubtitle),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      //  itemCount: 8,
      itemCount: menuList.length,
    ),
        ),
        // Container(
        //           height: 174,
        //           child: Text('data')
        //         ),
      
        ],
      ),
    
         
      );
  }
}

class _MenuItem {
  // final IconData icon;
  final Image image;
  // final ImageIcon Icon;
  // final Icon icon;
  final String title;
  final String subtitle;

  _MenuItem(this.title,this.subtitle,this.image);
}