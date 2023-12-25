import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: Colors.grey[800],
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
