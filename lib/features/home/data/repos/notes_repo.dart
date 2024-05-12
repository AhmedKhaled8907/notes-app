import 'package:dartz/dartz.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';

import '../../../../core/utils/errors/failure.dart';

abstract class NotesRepo {
  Either<Failure, List<NoteModel>> fetchNotes();
}
