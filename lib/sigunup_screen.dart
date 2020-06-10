import 'package:flutter/material.dart';
import 'constants.dart';
import 'signup_details.dart';

class SignupScreen extends StatefulWidget {

  static String id = "signupscreen";

  @override
  _SignupScreenState createState() => _SignupScreenState();
}


class _SignupScreenState extends State<SignupScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'SRMteen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                SignupDetailsField(hintText: 'First Name', txt: TextCapitalization.sentences,),
                SignupDetailsField(hintText: 'Last Name', txt: TextCapitalization.sentences,),
                SignupDetailsField(hintText: 'Register Number', txt: TextCapitalization.characters,),

                Row(
                  children: <Widget>[
                    Flexible(child: SignupDetailsField(hintText: 'Year',),),
                    Flexible(child: SignupDetailsField(hintText: 'Section', txt: TextCapitalization.characters,),),
                  ],
                ),

                SignupDetailsField(hintText: 'Mobile',),
                SignupDetailsField(hintText: 'Email',),
              ],
            ),
          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              child: Container(
                width: double.infinity,
                height: 63.0,
                child: Center(
                  child: Text(
                    'SIGN UP',
                    style: kBottomButtonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: kBottomButtonBoxDecoration,
              ),
              onTap: (){
                //TODO Add the functionality to go to the cart screnn and then pay there.
              },
            ),
          ),
        ],
      ),
    );
  }
}


