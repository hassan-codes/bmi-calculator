import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF1D1F33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF1D1F33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF1D1F33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF1D1F33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF1D1F33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
