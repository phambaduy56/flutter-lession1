import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lession_01/views/components/home/groceries_home.dart';
import 'package:lession_01/views/components/home/item_home.dart';
import 'package:lession_01/views/components/home/mota_home.dart';
import 'package:lession_01/views/screen/product_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 65),
              Center(
                child: Image.asset('assets/images/Group3.png',
                    height: 23, width: 20),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    size: 18,
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff4C4F4D),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF2F3F2),
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 8),
                      child: Icon(FontAwesomeIcons.search, size: 18),
                    ),
                    TextField(
                      /// maxLengthEnforced: true,
                      decoration: InputDecoration(
                        hintText: 'Search Store',
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
                        contentPadding: EdgeInsets.only(left: 40),
                        border: InputBorder.none,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 367,
                height: 114.99,
                child: Image.asset('assets/images/banner.png'),
              ),
              SizedBox(height: 30),
              Mota(name: 'Exclusive Offer'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CartItem(
                      image: 'assets/images/pngfuel1.png',
                      title: 'Red Apple',
                      description: '1kg, Price',
                      price: 4.99,
                    ),
                    CartItem(
                      image: 'assets/images/pngfuel1.png',
                      title: 'Red Apple',
                      description: '1kg, Price',
                      price: 4.99,
                    ),
                    CartItem(
                      image: 'assets/images/pngfuel1.png',
                      title: 'Red Apple',
                      description: '1kg, Price',
                      price: 4.99,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Mota(name: 'Best Selling'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CartItem(
                      image: 'assets/images/pngfuel3.png',
                      title: 'Red Apple',
                      description: '1kg, Price',
                      price: 4.99,
                    ),
                    CartItem(
                      image: 'assets/images/pngfuel2.png',
                      title: 'Red Apple',
                      description: '1kg, Price',
                      price: 4.99,
                    ),
                    CartItem(
                      image: 'assets/images/pngfuel3.png',
                      title: 'Red Apple',
                      description: '1kg, Price',
                      price: 4.99,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Mota(name: 'Groceries'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Groceries(
                      name: 'Pulses',
                      image: 'assets/images/pngfuel7.png',
                      hexColor: 'F8A44C',
                    ),
                    Groceries(
                      name: 'Rice',
                      image: 'assets/images/pngfuel6.png',
                      hexColor: '53B175',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CartItem(
                      image: 'assets/images/pngfuel4.png',
                      title: 'Beef Bone',
                      description: '1kg, Priceg',
                      price: 4.99,
                    ),
                    CartItem(
                      image: 'assets/images/pngfuel5.png',
                      title: 'Broiler Chicken',
                      description: '1kg, Priceg',
                      price: 4.99,
                    ),
                    CartItem(
                      image: 'assets/images/pngfuel4.png',
                      title: 'Beef Bone',
                      description: '1kg, Priceg',
                      price: 4.99,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
