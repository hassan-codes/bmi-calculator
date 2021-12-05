import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_child_content.dart';
import 'squircle_card.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0XFF45485b);
const Color inactiveCardColor = Color(0XFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: SquircleCard(
                        color: (selectedGender == Gender.male)
                            ? activeCardColor
                            : inactiveCardColor,
                        child: CardChildContent(
                          icon: FontAwesomeIcons.mars,
                          title: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: SquircleCard(
                        color: (selectedGender == Gender.female)
                            ? activeCardColor
                            : inactiveCardColor,
                        child: CardChildContent(
                          icon: FontAwesomeIcons.venus,
                          title: 'FEMALE',
                        ),
                      ),
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
                      color: activeCardColor,
                      child: CardChildContent(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
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
                      color: activeCardColor,
                      child: CardChildContent(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: SquircleCard(
                      color: activeCardColor,
                      child: CardChildContent(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
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
      ),
    );
  }
}
