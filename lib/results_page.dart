import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('RESULT'),
          centerTitle: true,
        ),
        body: Container(
          child: Text('Results'),
        ),
      ),
    );
  }
}
