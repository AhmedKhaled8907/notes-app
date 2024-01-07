import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    required this.onSaved,
  });

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 16.sp),
        hintText: hintText,
        border: buildBorder(Colors.white, 1),
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
