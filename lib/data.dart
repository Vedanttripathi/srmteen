import 'package:flutter/material.dart';
import 'helper.dart';

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

  void allelements()
  {
    print('This is the start');
    itemList.forEach((k,v) => print('${k}: ${v}'));
    print('This is the end');
  }

  List<Helper> returnFoodNameList()
  {
    List<Helper> foodList = List<Helper>();
    itemList.forEach((k, v) {
      if (v > 0) {
        foodList.add(Helper(foodname: k, quantity: v));
      }
    }
    );
    return foodList;
  }

  void setDefault()
  {
    itemList.forEach((k, v){
      itemList[k] = 0;
    });
  }

//  List<String> returnQuantityList()
//  {
//    List<String> quantityList;
//    itemList.forEach((k, v) {
//      if (v > 0) {
//        quantityList.add(v);
//      }
//    }
//    );
//    return quantityList;
//  }

}