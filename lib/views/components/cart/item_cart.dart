import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
