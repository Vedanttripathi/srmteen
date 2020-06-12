import 'package:flutter/material.dart';
import 'constants.dart';
import 'data.dart';
import 'package:provider/provider.dart';
import 'helper.dart';
import 'payments_screen.dart';


class BillingScreen extends StatefulWidget {

  static String id = 'billingscreen';

  List<Helper> billList;
  int total;

  BillingScreen({this.billList, this.total});


  @override
  _BillingScreenState createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //TODO Add the listview builder here to show the food , it's quantity and the total bill.
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: widget.billList.length,
                  itemBuilder: (BuildContext context, int index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25.0, bottom: 10.0, top: 10.0,),
                          child: Text(
                              '${widget.billList[index].foodname}',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 25.0, bottom: 10.0, top: 10.0,),
                          child: Text(
                              'x ${widget.billList[index].quantity.toString()}',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
              thickness: 1.0,
              indent: 25.0,
              endIndent: 25.0,
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 25.0, top: 25.0,),
                    child: Text('\u{20B9} ${widget.total}.0',
                      style: TextStyle(
                        color: Colors.green,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 63.0,
                child: Center(
                  child: Text(
                    'PAY',
                    style: kBottomButtonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: kBottomButtonBoxDecoration,
              ),
              onTap: (){
                //TODO Add the functionality to go to the payments screnn and then pay there.
                Navigator.pushNamed(context, PaymentsScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
