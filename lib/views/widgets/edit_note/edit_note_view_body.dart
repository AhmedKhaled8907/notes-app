import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/notes/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 32.h),
            CustomTextFormField(
              hintText: 'Title',
              onSaved: (value) {},
            ),
            SizedBox(height: 16.h),
            CustomTextFormField(
              hintText: 'Content',
              maxLines: 5,
              onSaved: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
