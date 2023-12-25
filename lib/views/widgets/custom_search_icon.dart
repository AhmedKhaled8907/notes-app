import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16.r),
        ),
        color: Colors.grey[800],
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
          size: 28.sp,
        ),
      ),
    );
  }
}
