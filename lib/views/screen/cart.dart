import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lession_01/views/Dialog/dialog_cart.dart';
import 'package:lession_01/views/components/cart/item_cart.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  void showPopup() {
    showDialog(
      context: context,
      builder: (_) => PopUp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            child: Text(
              "My Cart",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff181725),
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.center),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      color: Colors.black,
                    ),
                    ItemCart(
                      image: 'assets/images/pngfuel4.png',
                      name1: 'Bell Pepper Red',
                      name2: '1kg, Price',
                      price1: 1,
                      price2: 143,
                    ),
                    ItemCart(
                      image: 'assets/images/pngfuel5.png',
                      name1: 'Bell Pepper Red',
                      name2: '1kg, Price',
                      price1: 1,
                      price2: 143,
                    ),
                    ItemCart(
                      image: 'assets/images/pngfuel2.png',
                      name1: 'Bell Pepper Red',
                      name2: '1kg, Price',
                      price1: 1,
                      price2: 143,
                    ),
                    ItemCart(
                      image: 'assets/images/pngfuel1.png',
                      name1: 'Bell Pepper Red',
                      name2: '1kg, Price',
                      price1: 1,
                      price2: 143,
                    ),
                    ItemCart(
                      image: 'assets/images/pngfuel3.png',
                      name1: 'Bell Pepper Red',
                      name2: '1kg, Price',
                      price1: 1,
                      price2: 143,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 24.45, left: 25, right: 25),
              child: SizedBox(
                width: double.infinity,
                height: 67,
                child: RaisedButton(
                  onPressed: () {
                    showPopup();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          'Go to Checkout',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 70),
                      Container(
                        width: 33,
                        height: 18,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff489E67),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Text(
                          '\$143',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffFCFCFC),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  ),
                  color: Color(0xff53B175),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(23))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
