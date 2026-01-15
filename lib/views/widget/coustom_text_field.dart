import 'package:flutter/material.dart';
import 'package:notes_app/const/constance.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({super.key, required this.hintText,  this.maxlines=1});
 final String hintText;
    final int maxlines;

  @override
  Widget build(BuildContext context) {
   
    return  TextField(
      cursorColor: kPrimeryColor,
     
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimeryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(19),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
