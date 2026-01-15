import 'package:flutter/material.dart';

class CustomIconSerch extends StatelessWidget {
  const CustomIconSerch({super.key, required this.iconAppbar});
 final IconData iconAppbar;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(28),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(iconAppbar, size: 32)),
    );
  }
}
