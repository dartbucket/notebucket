import 'package:auto_animated_list/auto_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:note_bucket/src/model/note.dart';
import 'package:note_bucket/src/views/widgets/note_list_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key, required this.notes});

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    return AutoAnimatedList<Note>(
      padding: const EdgeInsets.all(20),
      items: notes,
      itemBuilder: (context, note, index, animation) {
        return SizeFadeTransition(
          animation: animation,
          child: NoteListItem(
            note: notes[index],
          ),
        );
      },
    );
  }
}
