import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEditTextFormField extends StatelessWidget {
  const CustomEditTextFormField({
    super.key,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.controllerText,
  });

  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  final String? controllerText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.blueAccent),
        border: buildBorder(Colors.white, 1),
        enabledBorder: buildBorder(Colors.white, 1),
        focusedBorder: buildBorder(Colors.white, 3),
      ),
      maxLines: maxLines,
      controller: TextEditingController(text: controllerText),
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
