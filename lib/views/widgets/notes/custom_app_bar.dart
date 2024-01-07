import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:notes_app/views/widgets/custom_widgets/custom_search_icon.dart';
=======
import 'package:notes_app/views/widgets/helpers/custom_search_icon.dart';
>>>>>>> 65dd67934551f427df652f044674f527b4ae217b

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 32.sp),
        ),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
