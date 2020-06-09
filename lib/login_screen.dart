import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:srmteen/home_screen.dart';
import 'sigunup_screen.dart';

class LoginScreen extends StatelessWidget {

  static String id = "loginscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFf2994a),
                Color(0xFFf2c94c),
              ],
            )
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'SRMteen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0,),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Registration Number',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                      fontSize: 18.0,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          ),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0,),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Open Sans',
                    fontSize: 18.0,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Divider(
                thickness: 1.0,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    child: Text('LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans',
                        letterSpacing: 1.5,
                        fontSize: 20.0,
                      ),
                    ),
                    color: Colors.white,
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                  ),
                ),

                Container(
                  height: 50.0,
                    width: 150.0,
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    child: Text('SIGN UP',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans',
                        letterSpacing: 1.5,
                        fontSize: 20.0,
                      ),
                    ),
                    color: Colors.white,
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        ),
    );
  }
}


