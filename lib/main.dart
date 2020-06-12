import 'package:flutter/material.dart';
import 'package:srmteen/login_screen.dart';
import 'package:srmteen/sigunup_screen.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'profile_screen.dart';
import 'billing_screen.dart';
import 'payments_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

//  SharedPreferences prefs;
//  bool user;
//
//   TODO Add the payments screen
//
//  isLoggedin() async
//  {
//    prefs = await SharedPreferences.getInstance();
//    prefs?.setBool('isLoggedin', true);
//    user = prefs.getBool('isLoggedin');
//  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      builder: (context) => Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
//        initialRoute: user ? HomeScreen.id : LoginScreen.id,
        initialRoute: LoginScreen.id,
        routes: {
          HomeScreen.id : (context) => HomeScreen(),
          LoginScreen.id : (context) => LoginScreen(),
          SignupScreen.id : (context) => SignupScreen(),
          ProfileScreen.id : (context) => ProfileScreen(),
          BillingScreen.id : (context) => BillingScreen(),
          PaymentsScreen.id : (context) => PaymentsScreen(),
        },
      ),
    );
  }
}

