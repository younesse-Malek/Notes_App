import 'package:flutter/material.dart';

class CustomIconSerch extends StatelessWidget {
  const CustomIconSerch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(28),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(Icons.search, size: 32)),
    );
  }
}
