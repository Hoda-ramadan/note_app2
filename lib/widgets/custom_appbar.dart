import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/custom_icon.dart';

class Custom_appbar extends StatelessWidget {
  const Custom_appbar({
    super.key,
    required this.icon,
    required this.appbar_title,
  });
  final IconData icon;
  final String appbar_title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(appbar_title, style: TextStyle(fontSize: 24)),
        Spacer(),
        CustomSearchicon(icon: icon),
      ],
    );
  }
}
