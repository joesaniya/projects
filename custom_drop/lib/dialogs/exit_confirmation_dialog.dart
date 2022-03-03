
import 'package:flutter/material.dart';


class ExitConfirmationDialog extends StatefulWidget {
  @override
  State<ExitConfirmationDialog> createState() => _ExitConfirmationDialogState();
}

class _ExitConfirmationDialogState extends State<ExitConfirmationDialog> {

  String? _name;
  String? _email;
  String? _password;
  String? _url;
  String? _phoneNumber;
  String? _calories;

  DateTime _date = DateTime.now();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter Project Name'),
      maxLength: 10,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Project Name is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value;
      },
    );
  }

  // Widget _buildEmail() {
  //   return TextFormField(
  //     decoration: InputDecoration(labelText: 'Project Data'),
  //     validator: (String? value) {
  //       if (value!.isEmpty) {
  //         return 'Email is Required';
  //       }

  //       if (!RegExp(
  //               r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
  //           .hasMatch(value)) {
  //         return 'Please enter a valid email Address';
  //       }

  //       return null;
  //     },
  //     onSaved: (String? value) {
  //       _email = value;
  //     },
  //   );
  // }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration
      (
        labelText: 'Project Date',
        suffixIcon: IconButton
        (
          onPressed: () {
            print('date clicked');
            // pickDate(context);
            _selectDate(context);
          },
          icon: Icon(Icons.calendar_view_week_rounded),
        )
      ),
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Project Date is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _password = value;
      },
    );
  }

  Widget _builURL() {
    return TextFormField(
      decoration: InputDecoration
      (
        labelText: 'Project duration',
        suffixIcon: IconButton
        (
          onPressed: (){
            print('duration clicked');
          },
          icon: Icon(Icons.calendar_view_month_sharp),
        )
      ),
      keyboardType: TextInputType.url,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Project Time is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _url = value;
      },
    );
  }
    Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration
        (
          labelText: 'Finishing Time',
          suffixIcon: IconButton
        (
          onPressed: (){
            print('Finishing time clicked');
          },
          icon: Icon(Icons.calendar_view_day),
        )
        ),
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Finishing Time is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _email = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Today Work'),
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Task is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _url = value;
      },
    );
  }

  // Widget _buildCalories() {
  //   return TextFormField(
  //     decoration: InputDecoration(labelText: 'Calories'),
  //     keyboardType: TextInputType.number,
  //     validator: (String? value) {
  //       int? calories = int.tryParse(value!);

  //       if (calories == null || calories <= 0) {
  //         return 'Calories must be greater than 0';
  //       }

  //       return null;
  //     },
  //     onSaved: (String? value) {
  //       _calories = value;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
     padding: EdgeInsets.all(10.0),
    height: 550,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildName(),
                  _buildEmail(),
                  _buildPassword(),
                  _builURL(),
                  _buildPhoneNumber(),
                  // _buildCalories(),
                  SizedBox(height: 100),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('No',style: TextStyle(fontFamily: 'inter')),textColor: Colors.teal),
            SizedBox(width: 8,),

            RaisedButton(
              onPressed: (){
                print('Yes');
                if (!_formKey.currentState!.validate()) {
                        return;
                      }
  
                      _formKey.currentState!.save();
  
                      print(_name);
                      print(_email);
                      print(_phoneNumber);
                      print(_url);
                      print(_password);
                      print(_calories);

            }, 
            child: Text('Yes',style: TextStyle(fontFamily: 'inter'),), color: Colors.black, textColor: Colors.white,)
          ],
        )
                  // RaisedButton(
                  //   child: Text(
                  //     'Submit',
                  //     style: TextStyle(color: Colors.blue, fontSize: 16),
                  //   ),
                  //   onPressed: () {
                  //     if (!_formKey.currentState!.validate()) {
                  //       return;
                  //     }
  
                  //     _formKey.currentState!.save();
  
                  //     print(_name);
                  //     print(_email);
                  //     print(_phoneNumber);
                  //     print(_url);
                  //     print(_password);
                  //     print(_calories);
  
                  //     //Send to API
                  //   },
                  // )

                ],
              ),
            ),
          ),
        ),
  );

  Future<Null> _selectDate(BuildContext context) async
{
 print('_selectDate method called');
  final initialDate = _date;
  final _datePicker =  await showDatePicker
    (
      context: context, 
      initialDate : DateTime.now(),
      firstDate:DateTime(1990), 
      lastDate:DateTime(3000)
    );

    if(_datePicker != null && _datePicker != _date)
    {
      setState(() {
        _date = _datePicker;
      });
    }
}

// Future pickDate(BuildContext context) async{
//   print('pick date method called');
//   final initialDate = DateTime.now();
//   final newDate =  await showDatePicker
//     (
//       context: context, 
//       initialDate: initialDate, 
//       firstDate: DateTime(DateTime.now().year-10), 
//       lastDate: DateTime(DateTime.now().year+50)
//     );
// }

  // _buildChild(BuildContext context) => 
  // Container(
  //   padding: EdgeInsets.all(10.0),
  //   height: 350,
  //   decoration: BoxDecoration(
  //     color: Colors.white,
  //     shape: BoxShape.rectangle,
  //     borderRadius: BorderRadius.all(Radius.circular(12))
  //   ),
  //   child: Column(
  //     children: <Widget>[
  //       // Container(
  //       //   child: Padding(
  //       //     padding: const EdgeInsets.all(12.0),
  //       //     child: Image.asset('assets/images/sad.png', height: 120, width: 120,),
  //       //   ),
  //       //   width: double.infinity,
  //       //   decoration: BoxDecoration(
  //       //     color: Colors.teal,
  //       //       // color: Colors.white,
  //       //       shape: BoxShape.rectangle,
  //       //       borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
  //       //   ),
  //       // ),
  //       // SizedBox(height: 24,),
  //       Text('Do you want to Log Out?', style: TextStyle(letterSpacing: 1.0,fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700, fontFamily: 'inter'),),
  //       SizedBox(height: 8,),
  //       Padding(
  //         padding: const EdgeInsets.only(right: 16, left: 16),
  //         child: Text('If LogOut is pressed by mistake then click on no to continue.', 
  //         style: TextStyle(
  //           fontSize: 15,
  //           height:1.2,
  //           letterSpacing: 1.0 ,
  //           color: Colors.black,
  //           fontFamily: 'inter',
  //           fontWeight: FontWeight.w500
  //         ),
  //          textAlign: TextAlign.center,),
  //       ),
  //       SizedBox(height: 24,),
  //       Row(
  //         mainAxisSize: MainAxisSize.min,
  //         children: <Widget>[
  //           FlatButton(onPressed: (){
  //             Navigator.of(context).pop();
  //           }, child: Text('No',style: TextStyle(fontFamily: 'inter')),textColor: Colors.teal),
  //           SizedBox(width: 8,),
  //           RaisedButton(
  //             onPressed: (){
  //               print('pressed');
  //               // _signout(context);
  //             //  return Navigator.of(context).pop(true);

  //           }, child: Text('Yes',style: TextStyle(fontFamily: 'inter'),), color: Colors.black, textColor: Colors.white,)
  //         ],
  //       )
  //     ],
  //   ),
  // );
}

// void pickDate(BuildContext context) {
// }


