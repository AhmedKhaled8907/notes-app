import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    AddNoteLoading();
    try {
      var noteBox = Hive.box(kNotesBox);
      await noteBox.add(note);
      AddNoteSuccess();
    }catch (e) {
     AddNoteFailure(e.toString());
    }
  }
}
