import 'package:flutter/material.dart';

class SquircleCard extends StatelessWidget {
  SquircleCard({required this.color, required this.child});

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
