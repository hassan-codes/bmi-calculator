import 'package:flutter/material.dart';

const titleTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0XFF8D8398),
);

class CardChildContent extends StatelessWidget {
  CardChildContent({required this.icon, required this.title});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: titleTextStyle,
        ),
      ],
    );
  }
}
