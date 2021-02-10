import 'package:flutter/material.dart';
import 'Constants.dart';
import 'SecondPage.dart';
// ignore: must_be_immutable
class  mypinkishButton extends StatefulWidget {
  @override
    String mytext;
  Function ontap;
  mypinkishButton({this.mytext,this.ontap});
  _mypinkishButtonState createState() => _mypinkishButtonState(myText: mytext,ontap: ontap);
}

// ignore: camel_case_types
class _mypinkishButtonState extends State<mypinkishButton> {
  String myText;
  Function ontap;
  _mypinkishButtonState({this.myText,this.ontap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:ontap,
        child: Container(
          alignment: Alignment.center,
          height: 80.0,
          width: double.infinity,
          child: Text(
            myText,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          decoration: BoxDecoration(
              color: pinkishColor,
              borderRadius: BorderRadius.circular(10)),

        )
      ),
    );
  }
}


