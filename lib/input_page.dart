import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const botton_container_height = 80.0;
const containerGrayColour = Color(0xFF1D1E33);
const bottomButtonColour = Color(0xFFEB1555);
const textColor = Color(0xFF8D8E98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable_card(
                    colour: containerGrayColour,
                    cardChild: ReuseableIcon(textToShow: 'Men',inputIcon: FontAwesomeIcons.mars,),
                  ),
                ),
                Expanded(
                    child: Reuseable_card(
                  colour: containerGrayColour,
                  cardChild: ReuseableIcon(textToShow: 'Women', inputIcon: FontAwesomeIcons.venus,),
                )),
              ],
            ),
          ),
          Expanded(
            child: Reuseable_card(
              colour: containerGrayColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable_card(
                    colour: containerGrayColour,
                  ),
                ),
                Expanded(
                  child: Reuseable_card(
                    colour: containerGrayColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: botton_container_height,
          ),
        ],
      ),
    );
  }
}

class ReuseableIcon extends StatelessWidget {

  final IconData inputIcon;
  final String textToShow;
  ReuseableIcon({this.textToShow, this.inputIcon});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          inputIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textToShow,
          style: TextStyle(
            fontSize: 18.0,
            color: textColor,
          ),
        ),
      ],
    );
  }
}

class Reuseable_card extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  Reuseable_card({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
