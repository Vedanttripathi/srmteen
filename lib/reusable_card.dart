import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'food_details.dart';

class ReusableCard extends StatefulWidget {

  String foodName;
  String imageLocation;
  String price;

  ReusableCard({this.foodName, this.imageLocation, this.price});


  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {

  int _itemcount = 0;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Color(0xFFecf0f1),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                child: Container(
                    child: Image.asset(widget.imageLocation,
                      fit: BoxFit.fitWidth,
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
              child: Text(
                  widget.foodName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 2.0
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                widget.price,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Row(//TODO Warp this in a coloumn widget and then add an image, text and it's price.
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: RawMaterialButton(
                    child: Icon(
                      FontAwesomeIcons.minus,
                      size: 15.0,
                    ),
                    constraints: BoxConstraints.tightFor(
                      width: 30.0,
                      height: 30.0,
                    ),
                    elevation: 6.0,
                    shape: CircleBorder(),
                    fillColor: Color(0xFFbdc3c7),
                    onPressed: (){
                      setState(() {
                        if (_itemcount > 0)
                          _itemcount--;
                        //TODO Add the quantity to the map data usin provider package like : itemList[foodNAme] = _itemcount
                        Provider.of<Data>(context).addValues(widget.foodName, _itemcount);
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(Provider.of<Data>(context).itemList[widget.foodName].toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: RawMaterialButton(
                    child: Icon(
                      FontAwesomeIcons.plus,
                      size: 15.0,
                    ),
                    constraints: BoxConstraints.tightFor(
                      width: 30.0,
                      height: 30.0,
                    ),
                    elevation: 6.0,
                    shape: CircleBorder(),
                    fillColor: Color(0xFFbdc3c7),
                    onPressed: (){
                      setState(() {
                        if (_itemcount < 10)
                          _itemcount++;
                        Provider.of<Data>(context).addValues(widget.foodName, _itemcount);
                      });
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
