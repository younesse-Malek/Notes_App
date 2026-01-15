import 'package:flutter/material.dart';

import 'package:notes_app/const/constance.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 44,
      decoration: BoxDecoration(
        color: kPrimeryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Center(
        child: Text('Add', style: TextStyle(color: Colors.black, fontSize: 21,fontWeight: FontWeight.bold)),
      ),
    );
  }
}
