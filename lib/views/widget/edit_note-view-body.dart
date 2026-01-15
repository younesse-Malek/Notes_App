import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/coustom_app_bar.dart';

class EditeNoteviewBody extends StatelessWidget {
  const EditeNoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17,),
      child: Column(
        
        children: [
          SizedBox(height: 32,),
          const CustomAppBar(
            title: 'Edite Note',
            iconAppbar: Icons.check,
          ),
        ],
      ),
    );
  }
}
