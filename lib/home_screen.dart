import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'drawermenu_item.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'data.dart';
import 'calculate_bill.dart';
import 'profile_screen.dart';
import 'billing_screen.dart';
import 'helper.dart';

class HomeScreen extends StatefulWidget {
  static String id = "homescreen";
  //TODO now every time you increase the counter of a food item add it into the map with the corresponding food item.

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'SRMteen',
          style: kAppBarTextStyle,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'profile',
              child: GestureDetector(
                onTap: (){
                  //TODO Add the navigation to the profile screen
                  Navigator.pushNamed(context, ProfileScreen.id);
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/undraw_male_avatar_323b.png'),
                  radius: 25.0,
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0,),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, BillingScreen.id);
              },
              child: Icon(
              FontAwesomeIcons.shoppingCart,
                color: Colors.black,
                size: 28.0,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black,
            size: 50.0,
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.white,
        ),
        child: Drawer(
          elevation: 6.0,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/undraw_male_avatar_323b.png'),
                    radius: 25.0,
                    backgroundColor: Colors.blue,
                  ),
                ),
                accountName: Text('Vedant Tripathi',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Open Sans',
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              DrawerMenuItem(txt : 'Home'),
              DrawerMenuItem(txt : 'Cart'),
              DrawerMenuItem(txt : 'Profile'),
              //TODO Add an Orders section and it's functionality also to show previous orders.
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding( //TODO wrap this widget in a ListView and the start adding cards in the list view.
                    padding: EdgeInsets.only(top: 5.0, bottom: 10.0, left: 5.0, right: 5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: Container(
                        child: Image.asset('images/home_page_image.png',
                        fit: BoxFit.fitHeight,
                        height: MediaQuery.of(context).size.height * 0.5,),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReusableCard(foodName: 'Dosa', imageLocation: 'images/Dosa.jpeg', price: '\u{20B9} 50',),
                      ReusableCard(foodName: 'Idli', imageLocation: 'images/Idli.jpg', price: '\u{20B9} 25',),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReusableCard(foodName: 'Sandwich', imageLocation: 'images/sandwich.jpg', price: '\u{20B9} 100',),
                      ReusableCard(foodName: 'Sambar', imageLocation: 'images/sambar.jpeg', price: '\u{20B9} 20'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReusableCard(foodName: 'coffee', imageLocation: 'images/coffee.jpeg', price: '\u{20B9} 20'),
                      ReusableCard(foodName: 'Tea', imageLocation: 'images/tea.jpeg', price: '\u{20B9} 15'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReusableCard(foodName: 'Butter Chicken', imageLocation: 'images/butterchicken.jpeg', price: '\u{20B9} 150'),
                      ReusableCard(foodName: 'Biryani', imageLocation: 'images/biryani.jpeg', price: '\u{20B9} 120'),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 70.0,
                child: Center(
                  child: Text(
                      'CHECKOUT',
                    style: kBottomButtonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: kBottomButtonBoxDecoration,
              ),
              onTap: (){
                //TODO Add the functionality to go to the cart screnn and then pay there.
                var calc = CalculateBill(itemList: Provider.of<Data>(context).itemList);
                int total = calc.calculateTotal();
                List<Helper> foodList = Provider.of<Data>(context).returnFoodNameList();
                Provider.of<Data>(context).setDefault();
                Provider.of<Data>(context).allelements();
                Navigator.push(context, MaterialPageRoute(builder: (context) => BillingScreen(
                  billList: foodList,
                  total: total,
                ),),);
              },
            ),
          ],
        ),
      ),
    );
  }
}


