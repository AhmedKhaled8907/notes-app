import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 16.sp),
        hintText: hintText,
        enabledBorder: buildBorder(Colors.white, 1),
        focusedBorder: buildBorder(Colors.white, 3),
      ),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder(Color color, double width) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: width),
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
    );
  }
}
