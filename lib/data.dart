import 'package:flutter/material.dart';

class Data extends ChangeNotifier
{
  Map itemList = {
    'Dosa' : 0,
    'Idli' : 0,
    'Sandwich' : 0,
    'Sambar' : 0,
    'coffee' : 0,
    'Tea' : 0,
    'Butter Chicken' : 0,
    'Biryani' : 0,
  };

  void addValues (String food, int quantity)
  {
    itemList[food] = quantity;
//    print('$food : $quantity');
//    allelements();
    notifyListeners();
  }

//  void allelements()
//  {
//    print('This is the start');
//    itemList.forEach((k,v) => print('${k}: ${v}')); TODO use this same syntax to print all the elements on the billing page.
//    print('This is the end');
//  }

}