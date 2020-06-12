import 'package:flutter/material.dart';
import 'data.dart';
import 'package:provider/provider.dart';

class FoodDetails extends StatelessWidget {

  static String id = 'FoodDetailsScreen';

  String imageLocation;

  FoodDetails({@required this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            CircleAvatar( //TODO Add the functionality of hero animation
              child: Image.asset(imageLocation),
              radius: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
