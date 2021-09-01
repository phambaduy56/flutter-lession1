import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Favorurite extends StatefulWidget {
  const Favorurite({Key? key}) : super(key: key);

  @override
  _FavoruriteState createState() => _FavoruriteState();
}

class _FavoruriteState extends State<Favorurite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            child: Text(
              "Favorurite",
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
                child: SubmitButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key? key,
    required this.image,
    required this.name1,
    required this.name2,
    required this.price1,
    required this.price2,
  }) : super(key: key);

  final String image, name1, name2;
  final double price1, price2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, width: 70, height: 65),
              Padding(
                padding:
                    EdgeInsets.only(left: 32, right: 80, top: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name1,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        name2,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7C7C7C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: 40, bottom: 20),
                      child: Text(
                        '\$$price2',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  print('hello');
                },
                icon: Icon(FontAwesomeIcons.chevronRight),
              )
            ],
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        onChangeLogin(context);
      },
      child: Text(
        'Add All To Cart',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      color: Color(0xff53B175),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(23))),
    );
  }

  void onChangeLogin(BuildContext context) {
    Navigator.pushNamed(context, '/NavPage');
  }
}
