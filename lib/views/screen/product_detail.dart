import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
            size: 18,
          ),
        ),
        actions: [
          Image.asset('assets/images/Vector11.png'),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 371,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F3F2),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     offset: Offset(4, 8), // Shadow position
                      //   ),
                      // ],
                      ),
                  child: Image.asset('assets/images/Vector12.png'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Naturel Red Apple',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                '1kg, Price',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff7C7C7C),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Icon(Icons.favorite_border, size: 23),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 45.67,
                              height: 45.67,
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
                              child: Container(
                                child: Stack(
                                  alignment: Alignment.center,
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
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff181725),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 45.67,
                              height: 45.67,
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
                        ),
                        Text(
                          '\$233',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 28),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Detail',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Icon(FontAwesomeIcons.chevronLeft),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      RichText(
                        //textAlign: TextAlign.start,
                        text: TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  'Apples are nutritious. Apples may be good for weight loss. ',
                              style: TextStyle(
                                  color: Color(0xff7C7C7C), fontSize: 14),
                            ),
                            TextSpan(
                              text: 'apples may be good for your heart. ',
                              style: TextStyle(
                                  color: Color(0xff7C7C7C), fontSize: 14),
                            ),
                            TextSpan(
                              text: 'As part of a healtful and varied diet. ',
                              style: TextStyle(
                                  color: Color(0xff7C7C7C), fontSize: 14),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 19),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Nutritions',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 36,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7C7C7C),
                                  ),
                                ),
                                Text('\$100', style: TextStyle(fontSize: 14))
                              ],
                            ),
                            SizedBox(width: 25),
                            Icon(FontAwesomeIcons.chevronRight, size: 18)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(color: Colors.black),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 16,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Icon(
                              FontAwesomeIcons.chevronRight,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 67,
                    width: double.infinity,
                    child: SubmitButton(),
                  ),
                  SizedBox(height: 38),
                ],
              ),
            ),
          ],
        ),
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
        'Add To Basket',
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
