import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      height: 180,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                    SizedBox(height: 13),
                    Row(
                      children: [
                        Container(
                          width: 45.67,
                          height: 45.67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              print('print button');
                            },
                            icon: Icon(FontAwesomeIcons.minus,
                                color: Color(0xffB3B3B3)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.45,
                            right: 17.45,
                          ),
                          child: Text(
                            '$price1',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff181725),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 45.67,
                          height: 45.67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              print('print button');
                            },
                            icon: Icon(
                              FontAwesomeIcons.plus,
                              color: Color(0xff53B175),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        print('print button');
                      },
                      icon: Icon(
                        FontAwesomeIcons.times,
                        color: Color(0xffB3B3B3),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 20),
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

class PopUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpState();
}

class PopUpState extends State<PopUp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  Tween<double> opacityTween = Tween<double>(begin: 0.0, end: 1.0);
  Tween<double> marginTopTween = Tween<double>(begin: 300, end: 280);
  late Animation<double> marginTopAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    marginTopAnimation = marginTopTween.animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacityTween.animate(controller),
      child: Material(
        color: Colors.transparent,
        child: Material(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Color(0xffF2F3F2),
            ),
            margin: EdgeInsets.only(
              top: marginTopAnimation.value,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff181725),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(FontAwesomeIcons.times),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7C7C7C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Select Method',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff181725),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.chevronRight),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pament',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7C7C7C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset('assets/images/card.png'),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.chevronRight),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Promo Code',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7C7C7C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Pick discount',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff181725),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.chevronRight),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Cost',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7C7C7C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text('\$137',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.chevronRight),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.black),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'By placing an order you agree to our \n',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'And ',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'Conditions',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 26),
                          child: SizedBox(
                            width: double.infinity,
                            height: 67,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Place Order',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              color: Color(0xff53B175),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(23))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
