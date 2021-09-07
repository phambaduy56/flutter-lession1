import 'package:flutter/material.dart';

class OderAccepted extends StatelessWidget {
  const OderAccepted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/MaskGroup2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Container(
              margin: EdgeInsets.only(right: 40),
              child: Image.asset('assets/images/Group_6872.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your Order has been\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'accepted',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your items has been placcd and is on\n',
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: 'it’s way to being processed',
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 130, left: 25, right: 25),
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
                          'Track Order',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  color: Color(0xff53B175),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(23))),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/NavPage');
              },
              child: Text(
                'Back to home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
