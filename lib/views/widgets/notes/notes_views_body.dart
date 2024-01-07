import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/notes/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}
class _NotesViewBodyState extends State<NotesViewBody> {
@override
  void initState() {
    super.initState();
    context.read<NotesCubit>().fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            SizedBox(height: 16.h),
            const Expanded(
              child: NoteListView(),
            ),
          ],
        ),
      ),
    );
  }
}
