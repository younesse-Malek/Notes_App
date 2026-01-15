import 'package:flutter/material.dart';
import 'package:notes_app/views/edite_Notes.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, EditeNotes().editeNodeID),
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 14, bottom: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFcc80),
        ),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Trips',
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Text(
                  'Build your Career whith younesse_Malek',
                  style: TextStyle(
                    color: Colors.black.withAlpha(170),
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 27),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 29),
              child: Text(
                'May 21,2026',
                style: TextStyle(color: Colors.black.withAlpha(188)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
