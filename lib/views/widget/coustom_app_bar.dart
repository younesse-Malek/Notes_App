import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_icon_serch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.iconAppbar});
  final String title;
  final IconData iconAppbar;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style:const TextStyle(fontSize: 28)),
        CustomIconSerch(iconAppbar: iconAppbar),
      ],
    );
  }
}
