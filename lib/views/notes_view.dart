import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes/notes_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          shape: const CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
