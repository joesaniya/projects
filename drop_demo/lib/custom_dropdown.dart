import 'package:flutter/material.dart';


class CustomDropdown extends StatefulWidget {
  const CustomDropdown({ Key? key }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {

  bool? isDropdownOpened=false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        setState(() {
          // isDropdownOpened =! isDropdownOpened!;
          isDropdownOpened =isDropdownOpened!;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.red.shade600,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Text("Call to Action".toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w600
            ),
            ),
            Spacer(),
            Icon
              (
                Icons.arrow_drop_down,color: Colors.white,
              )
          ],
        ),
      ),
    );
  }
}
