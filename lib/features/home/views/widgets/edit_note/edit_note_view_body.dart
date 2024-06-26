import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/features/home/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/views/widgets/custom_widgets/custom_edit_text_form_field.dart';
import 'package:notes_app/features/home/views/widgets/edit_note/edit_note_color_list.dart';
import 'package:notes_app/features/home/views/widgets/notes/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 16.h),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.text = subtitle ?? widget.note.text;
                widget.note.save();
                context.read<NotesCubit>().fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 32.h),
            CustomEditTextFormField(
              controllerText: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16.h),
            CustomEditTextFormField(
              controllerText: widget.note.text,
              onChanged: (value) {
                subtitle = value;
              },
              maxLines: 5,
            ),
            SizedBox(height: 16.h),
            EditColorsListView(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
