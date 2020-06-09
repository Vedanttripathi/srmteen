import 'package:flutter/material.dart';


class DrawerMenuItem extends StatelessWidget {
  String txt;

  DrawerMenuItem({@required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 20.0, vertical: 15.0),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'Open Sans',
          letterSpacing: 2.0,
        ),
      ),
    );
  }
}