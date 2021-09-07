import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lession_01/views/components/cart/order_accepted.dart';

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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => OderAccepted(),
                                  ),
                                );
                              },
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
