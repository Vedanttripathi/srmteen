import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class CalculateBill {

  int totalsum = 0;
  Map itemList = new Map();

  CalculateBill({this.itemList});


  int calculateTotal()
  {
    itemList.forEach((k,v){

      switch(k)
      {
        case 'Dosa' : {totalsum += (v*50);}
        break;
        case 'Idli' : {totalsum += (v*25);}
        break;
        case 'Sandwich' : {totalsum += (v*100);}
        break;
        case 'Sambar' : {totalsum += (v*20);}
        break;
        case 'coffee' : {totalsum += (v*20);}
        break;
        case 'Tea' : {totalsum += (v*15);}
        break;
        case 'Butter Chicken' : {totalsum += (v*150);}
        break;
        case 'Biryani' : {totalsum += (v*120);}
        break;
      }
    }
    );
    return totalsum;
  }
}


