import 'package:flutter/material.dart';
import 'package:srmteen/login_screen.dart';
import 'package:srmteen/sigunup_screen.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  //TODO Add the payments screen

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      builder: (context) => Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes: {
          HomeScreen.id : (context) => HomeScreen(),
          LoginScreen.id : (context) => LoginScreen(),
          SignupScreen.id : (context) => SignupScreen(),
        },
      ),
    );
  }
}

