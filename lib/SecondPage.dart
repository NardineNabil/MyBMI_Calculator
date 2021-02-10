import 'package:flutter/material.dart';
import 'Constants.dart';
import 'mybinkishButton.dart';
import 'Mycard.dart';

class SecondPage extends StatelessWidget {
  final String bmicalculated;
  final String status;
  final String interpretation;
  SecondPage({this.bmicalculated,this.status,this.interpretation});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("BMI CALCULATOR"),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Text(
                  "Your Results",
                  style: myBoldtextStyle,
                )),
                Expanded(
                  flex: 5,
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MyCard(
                        cardcolor: inactivecolor,
                        CardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           Text(status,style: TextStyle(
                             color: Colors.green,
                             fontWeight: FontWeight.bold,
                             fontSize:25.0),),
                            Text(bmicalculated,style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize:25.0),),
                            Text(interpretation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:25.0),),
                          ],
                        ),
                      ),),
                ),
                Expanded(
                    child: mypinkishButton(mytext: "RE-CALCULATE YOUR BMI", ontap:() {
                      Navigator.pop(context);
                    },)),
              ],
            )));
  }
}
