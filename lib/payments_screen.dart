import 'package:flutter/material.dart';
import 'constants.dart';

class PaymentsScreen extends StatefulWidget {

  static String id = 'paymentsscreen';

  //TODO Check why the numbers quantity are added twice.

  @override
  _PaymentsScreenState createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
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
    );
  }
}
