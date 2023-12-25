import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 32.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(hintText: 'Title'),
            SizedBox(height: 16.h),
            const CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 16.h),
            const CustomButton(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}


