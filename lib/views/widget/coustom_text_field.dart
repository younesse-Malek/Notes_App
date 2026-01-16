import 'package:flutter/material.dart';
import 'package:notes_app/const/constance.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({
    super.key,
    required this.hintText,
    this.maxlines = 1, this.onsave,
  });
  final String hintText;
  final int maxlines;
  final void Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimeryColor,
      onSaved: onsave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
      borderRadius: BorderRadius.circular(13),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
