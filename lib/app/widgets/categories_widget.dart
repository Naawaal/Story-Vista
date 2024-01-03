import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final String icon, title;
  const CategoriesWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Image.asset(icon),
      clipBehavior: Clip.antiAlias,
      elevation: 02,
      label: Text(title),
    );
  }
}
