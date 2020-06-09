import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupDetailsField extends StatelessWidget {

  String hintText;
  TextCapitalization txt;

  SignupDetailsField({@required this.hintText, this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0,),
      child: TextField(
        textCapitalization: txt == null ? TextCapitalization.none : txt,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}