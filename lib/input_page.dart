import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const Color cardBackgroundColor = Color(0XFF1D1F33);
const Color activeCardColor = Color(0XFF1D1E33);

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
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: SquircleCard(
                    color: cardBackgroundColor,
                  ),
                ),
                Expanded(
                  child: SquircleCard(
                    color: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: SquircleCard(
                    color: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: SquircleCard(
                    color: cardBackgroundColor,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SquircleCard(
                    color: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).accentColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class SquircleCard extends StatelessWidget {
  final Color color;

  SquircleCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0XFF1D1F33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
