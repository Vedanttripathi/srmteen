import 'package:flutter/material.dart';
import 'constants.dart';

class ProfileScreen extends StatelessWidget {

  static String id = 'profilescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'SRMteen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'profile',
              child: CircleAvatar(
                backgroundImage: AssetImage('images/undraw_male_avatar_323b.png'),
                radius: 150.0,
                backgroundColor: Colors.blue,
              ),
            ),
            Text(
              'Vedant Tripathi',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Open Sans',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'RA1711003020643',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Open Sans',
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'CSE - 3J',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Open Sans',
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Email : vk1815@srmist.edu.in',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Open Sans',
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Mobile : 8840760599',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Open Sans',
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
