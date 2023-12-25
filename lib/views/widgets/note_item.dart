import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h).copyWith(left: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.sp,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Text(
                  'Build Your Career With Ahmed Khaled',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16.sp,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 26.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Text(
                'Dec25 , 2023',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
