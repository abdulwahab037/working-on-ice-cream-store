import 'package:flutter/material.dart';

class MyTabs extends StatelessWidget {
  final String iconPath;
  const MyTabs({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          iconPath,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
