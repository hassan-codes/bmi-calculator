import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_child_content.dart';
import 'constants.dart';
import 'squircle_card.dart';

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
  int height = 180;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: SquircleCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: (selectedGender == Gender.male)
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: CardChildContent(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: SquircleCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: (selectedGender == Gender.female)
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: CardChildContent(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
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
                      onPress: () {},
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: kTitleTextStyle,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  height.toString(),
                                  style: kExtraLargeTextStyle,
                                ),
                                Text(
                                  'cm',
                                  style: kTitleTextStyle,
                                ),
                              ]),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: kInactiveGrey,
                              thumbColor: Theme.of(context).accentColor,
                              overlayColor: Color(0X1fEB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 28.0),
                              trackHeight: 1.2,
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: kMinHeight,
                              max: kMaxHeight,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          )
                        ],
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
                      onPress: () {},
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '40',
                            style: kExtraLargeTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(child: FontAwesomeIcons.minus),
                              SizedBox(
                                width: 14.0,
                              ),
                              RoundIconButton(child: FontAwesomeIcons.plus),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: SquircleCard(
                      onPress: () {},
                      color: kActiveCardColor,
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
              height: kBottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.child});

  final IconData child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      onPressed: () {},
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
    );
  }
}
