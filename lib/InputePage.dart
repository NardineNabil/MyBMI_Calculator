import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Mycard.dart';
import 'MyIcon.dart';
import 'Constants.dart';
import 'SecondPage.dart';
import 'CalculatorBrain.dart';
import 'mybinkishButton.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecolor = inactivecolor;
  Color femalecolor = inactivecolor;
  type selected;
  int weight = 74;
  int age = 19;
  //int height=180;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          elevation: 4,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = type.female;
                        });
                      },
                      child: MyCard(
                        cardcolor: selected == type.female
                            ? femalecolor = activecardcolor
                            : femalecolor = inactivecolor,
                        CardChild: MyIcon(
                          text: "Female",
                          myicon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = type.male;
                        });
                      },
                      child: MyCard(
                        cardcolor: selected == type.male
                            ? malecolor = activecardcolor
                            : malecolor = inactivecolor,
                        CardChild: MyIcon(
                          text: "male",
                          myicon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: MyCard(
                  cardcolor: inactivecolor,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text(
                        "Height",
                        style: MytextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        //: CrossAxisAlignment.center,
                        children: [
                          Text(height.toString(), style: myBoldtextStyle),
                          Text(
                            "cm",
                            style: MytextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),
                          overlayColor: Color(0x29ff577f),
                          thumbColor: Color(0xFFff577f),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.white54,
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double passedValue) {
                            setState(() {
                              height = passedValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: MyCard(
                    cardcolor: inactivecolor,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: MytextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: myBoldtextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyCustomizedButton(
                              myicondata: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            MyCustomizedButton(
                              myicondata: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    cardcolor: inactivecolor,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: MytextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: myBoldtextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyCustomizedButton(
                              myicondata: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            MyCustomizedButton(
                              myicondata: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
mypinkishButton(mytext:"CALCULATE",
  ontap:() {
    BMICalculator Calc=new BMICalculator(height:height,weight: weight);
    Calc.CalculateMyBMI();
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SecondPage(bmicalculated:Calc.CalculateMyBMI(),status:Calc.DetermineStatus(),interpretation:Calc.GetInterpretation())));
  },),
          ],
        ),
      ),
    );
  }
}

class MyCustomizedButton extends StatelessWidget {
  @override
  final IconData myicondata;
  final Function onpressed;
  MyCustomizedButton({this.myicondata, this.onpressed});
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      child: Icon(
        myicondata,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
