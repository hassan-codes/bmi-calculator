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
        color: Color(0XFF1D1F33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
