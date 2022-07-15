import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/theme.dart';
  

class FoodLogging extends StatefulWidget {
  const FoodLogging({ Key? key }) : super(key: key);

  @override
  State<FoodLogging> createState() => _FoodLoggingState();
}

class _FoodLoggingState extends State<FoodLogging> {

    var ischecked = [false, false, false]; 
    String _intendToWork = '';

     int _selection = 0;

      selectTime(int? timeSelected) {
       setState(() {
       _selection = timeSelected!;
          });
         }

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
      body: SingleChildScrollView
      (
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column
          (
            children: 
            [
              SizedBox
            (
              height: 10,
            ),
             Align(
              alignment: Alignment.centerLeft,
               child: Text(
                'Food Logging',
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'For when do you want to log?',
                              style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              // fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Appcolor.quantityheader
                              ),
                          ),
                        ),
                        Container
                        (
                          height: 30,
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Row
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: 
                              [
                                Container
                                (
                                  height: 30,
                                  width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Appcolor.todaybg,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.calendar_today,size: 15,),
                                      Text('Today',style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Appcolor.todaytext)),
                                    ],
                                  )
                                ),
                                SizedBox
                                (
                                  width: 10,
                                ),
                                Container
                                (
                                  height: 30,
                                  width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Appcolor.todaybg,
                                  ),
                                  child: Center(child: Text('11.54 am',style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Appcolor.todaytext)))
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox
            (
              height: 20,
            ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Card(
                       shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                         onTap: (){
                          // setState(() {
                          //   ischecked[0]=true;
                          // });
                          
                        },
                        child: Row(
                          children: <Widget>[
                            // Radio(
                            //   activeColor: Appcolor.datebg,
                            //   focusColor: Colors.white,
                            //   groupValue: _selection,
                            //   onChanged: selectTime,
                            //   value: 2,
                            // ),
                            Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              color: ischecked[0]?Appcolor.datebg:Colors.transparent,
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(
                                                color: Appcolor.datebg,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Save meal as favourite',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Appcolor.todaytext)),
                          ],
                        ),
                      ),
                    ),

                    // RadioListTile<String>(
                    //     contentPadding: const EdgeInsets.only(left: 0.0),
                    //     activeColor: Appcolor.background,
                    //     dense: true,
                    //     title: Text('Save meal as favourite',
                    //         style: TextStyle(
                    //             fontFamily: 'Roboto',
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w400,
                    //             color: Appcolor.todaytext)),
                    //     value: 'Save meal as favourite',
                    //     groupValue: _intendToWork,
                    //         onChanged: (value)
                    //     {
                    //        void handleRadioValueChangelicense(String? value) {
                    //             print(value);
                    //             setState(() => _intendToWork = value!);
                    //           }
                    //     },
                    //         ),

                    Padding(
                      padding: const EdgeInsets.only(left:20.0,right: 20),
                      child: Row
                      (
                        children: 
                        [
                          Expanded
                          (
                            child: Container
                            (
                              height: 40,
                              // color: Colors.red,
                              child: Column
                              (
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: 
                                [
                                  Align
                                  (
                                    alignment: Alignment.centerLeft,
                                    child: Text('Flaxseed', style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Appcolor.quantitysub),)),
                                  Row(
                                      children: [
                                        ImageIcon(
                                              AssetImage('assets/icons/edit_line.png'),
                                              size: 20,color: Appcolor.datebg,
                                          ),
                                          SizedBox(width: 5,),
                                        // Icon
                                        // (
                                        //   // Icons.edit,
                                        //     FontAwesomeIcons.penClip,
                                        //   size: 15,color: Appcolor.datebg,),
                                        Text('1 * 0.5 tbs..',style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Appcolor.quantitysubtitle),)
                                      ],
                                    )
                                ],
                              ),
                            )
                          ),
                          Expanded(child: Container()),
                          Expanded
                          (
                            child: Container
                            (
                               height: 40,
                              // color: Colors.green,
                              child: Row
                              (
                                children: 
                                [
                                  Container
                                  (
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Appcolor.cartaddicon,
                                        ),
                                        child: IconButton(
                                            icon: Icon(Icons.remove),
                                            onPressed: (){},
                                            iconSize: 15,
                                            color: Appcolor.datebg,
                                        ),
                                        // child: Icon(Icons.minimize,color: Appcolor.datebg,),
                                  ),
                                  Container
                                  (
                                    width: 30,
                                    height: 30,
                                    color: Colors.white,
                                        child:Center(child: Text('1')),
                                  ),
                                  Container
                                  (
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Appcolor.cartaddicon,
                                        ),
                                        child: IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: (){},
                                            iconSize: 15,
                                            color: Appcolor.datebg,
                                        ),
                                        // child: Center(child: Icon(Icons.add,color: Appcolor.datebg,)),
                                  ),
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    ),

                    SizedBox
                    (
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:20.0,right: 20),
                      child: Row
                      (
                        children: 
                        [
                          Expanded
                          (
                            child: Container
                            (
                              height: 40,
                              // color: Colors.red,
                              child: Column
                              (
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: 
                                [
                                  Align
                                  (
                                    alignment: Alignment.centerLeft,
                                    child: Text('Apple', style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Appcolor.quantitysub),)),
                                  Row(
                                      children: [
                                        // Icon(Icons.edit,size: 15,color: Appcolor.datebg,),
                                        ImageIcon(
                                              AssetImage('assets/icons/edit_line.png'),
                                              size: 20,color: Appcolor.datebg,
                                          ),
                                          SizedBox(width: 5,),
                                        Text('1 * 1 sma..',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Appcolor.quantitysubtitle),
                                        )
                                      ],
                                    )
                                ],
                              ),
                            )
                          ),
                          Expanded(child: Container()),
                          Expanded
                          (
                            child: Container
                            (
                               height: 40,
                              // color: Colors.green,
                              child: Row
                              (
                                children: 
                                [
                                  Container
                                  (
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Appcolor.cartaddicon,
                                        ),
                                        child: IconButton(
                                            icon: Icon(Icons.remove),
                                            onPressed: (){},
                                            iconSize: 15,
                                            color: Appcolor.datebg,
                                        ),
                                        // child: Icon(Icons.minimize,color: Appcolor.datebg,),
                                  ),
                                  Container
                                  (
                                    width: 30,
                                    height: 30,
                                    color: Colors.white,
                                        child:Center(child: Text('1')),
                                  ),
                                  Container
                                  (
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Appcolor.cartaddicon,
                                        ),
                                        child: IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: (){},
                                            iconSize: 15,
                                            color: Appcolor.datebg,
                                        ),
                                        // child: Center(child: Icon(Icons.add,color: Appcolor.datebg,)),
                                  ),
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    SizedBox
                    (
                      height: 20,
                    ),

          OutlineButton.icon(
        onPressed: () {
          print("Outline Button is Clicked");
        },
        highlightedBorderColor: Appcolor.headertext,
        splashColor: Appcolor.card,
        borderSide: BorderSide(
          color: Appcolor.datebg,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
        icon: const Icon(
          Icons.add,
          size: 18.0,
        ),
        label:  Text('ADD MORE ITEMS',style: TextStyle(color: Appcolor.datebg),),
      ),



                       
                  ],
                ),
              ),
            ),
            
          ],
        ),

        SizedBox
        (
          height: 20,
        ),
        SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  // elevation: 5,
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Nutritional Information',
                              style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              // fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Appcolor.quantityheader
                              ),
                          ),
                        ),
                        SizedBox
                        (
                          height: 30,
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Text('115', style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Appcolor.quantityheader),),
                              Text('Calories',
                              style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Appcolor.quantitysub)
                              ),
                            ],
                          )
                        ),


            Row
            (
              children: 
              [
                Expanded(
                  child: Column
                  (
                    children: 
                    [
                       Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            // color: Colors.green.withOpacity(0.25), // border color
                            color: Appcolor.proteinoutline,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2), // border width
                            child: Container( // or ClipRRect if you need to clip the content
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                 color: Appcolor.proteinbg.withOpacity(0.85), 
                                // color: Appcolor.proteinbg// inner circle color
                              ),
                              child: Container
                              (
                                child: Center
                                (
                                  // child: Text('1.2g')
                                  child: RichText(
                                    text: TextSpan(
                                        // style: TextStyle(color: Colors.black, fontSize: 36),
                                        children: <TextSpan>[
                                          TextSpan(text: '1.2', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 10,
                                            color: Appcolor.proteinoutline)
                                            ),
                                          TextSpan(text: 'g', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Appcolor.proteinoutline)
                                            ),
                                        ],
                                    ),
                                    ),
                                )
                              ), 
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text
                          (
                            'Protein', style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Appcolor.todaytext),
                          )
                        
                    ],
                  ),
                ),
               Expanded(
                  child: Column
                  (
                    children: 
                    [
                       Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Appcolor.fatoutline,
                            // color: Colors.green.withOpacity(0.25), // border color
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2), // border width
                            child: Container( // or ClipRRect if you need to clip the content
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Appcolor.proteinbg.withOpacity(0.85), 
                              ),
                              child: Container
                              (
                                child: Center
                                (
                                  // child: Text('1.2g')
                                  child: RichText(
                                    text: TextSpan(
                                        // style: TextStyle(color: Colors.black, fontSize: 36),
                                        children: <TextSpan>[
                                          TextSpan(text: '2.9', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 10,
                                            color: Appcolor.fatoutline)
                                            ),
                                          TextSpan(text: 'g', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Appcolor.fatoutline)
                                            ),
                                        ],
                                    ),
                                    ),
                                )
                              ),  // inner content
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text
                          (
                            'Fat', style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Appcolor.todaytext),
                          )
                    ],
                  ),
                ),
               Expanded(
                  child: Column
                  (
                    children: 
                    [
                       Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Appcolor.carbsoutline,
                            // color: Colors.green.withOpacity(0.25), // border color
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2), // border width
                            child: Container( // or ClipRRect if you need to clip the content
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Appcolor.proteinbg.withOpacity(0.85), 
                              ),
                              child: Container
                              (
                                child: Center
                                (
                                  // child: Text('1.2g')
                                  child: RichText(
                                    text: TextSpan(
                                        // style: TextStyle(color: Colors.black, fontSize: 36),
                                        children: <TextSpan>[
                                          TextSpan(text: '21', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 10,
                                            color: Appcolor.carbsoutline)
                                            ),
                                          TextSpan(text: 'g', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Appcolor.carbsoutline)
                                            ),
                                        ],
                                    ),
                                    ),
                                )
                              ),  // inner content
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text
                          (
                            'Carbs', style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Appcolor.todaytext),
                          )
                    ],
                  ),
                ),
                Expanded(
                  child: Column
                  (
                    children: 
                    [
                       Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Appcolor.fiberoutline,
                            // color: Colors.green.withOpacity(0.25), // border color
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2), // border width
                            child: Container( // or ClipRRect if you need to clip the content
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Appcolor.fiberbg
                                // color: Appcolor.fiberoutline.withOpacity(0.55), 
                              ),
                              child: Container
                              (
                                child: Center
                                (
                                  // child: Text('1.2g')
                                  child: RichText(
                                    text: TextSpan(
                                        // style: TextStyle(color: Colors.black, fontSize: 36),
                                        children: <TextSpan>[
                                          TextSpan(text: '6.2', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 10,
                                            color: Appcolor.fatoutline)
                                            ),
                                          TextSpan(text: 'g', style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Appcolor.fatoutline)
                                            ),
                                        ],
                                    ),
                                    ),
                                )
                              ),  // inner content
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 4,
                        ),
                        Text
                          (
                            'Fiber', style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Appcolor.todaytext),
                          )
                    ],
                  ),
                ),
              ],
            )
                      ],
                    ),
                  ),
                ),
              ),

              // SizedBox
              // (
              //   height: 10,
              // ),

              Container(
                margin: EdgeInsets.only(top: 12, bottom: 32),
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('LOG MEAL', style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    primary: Appcolor.datebg,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}