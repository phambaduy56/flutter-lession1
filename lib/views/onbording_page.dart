//import 'dart:html';

import 'package:flutter/material.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({Key? key}) : super(key: key);
  @override
  _OnbordingPageState createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/8140.png'),
                fit: BoxFit.cover)),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(flex: 3),
            SizedBox(
              height: 70,
              width: double.infinity,
            ),
            Expanded(
              flex: 3,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/Group.png'),
                  SizedBox(
                    height: 35.66,
                    width: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/Welcometoourstore.png',
                  ),
                  Text('Ger your groceries in as fast as one hour',
                      style: TextStyle(color: Colors.white70, fontSize: 16)),
                  SizedBox(
                    height: 40.88,
                    width: double.infinity,
                  ),
                  ElevatedButton(
                      child: Text("Get Started"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SingIn');
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(353, 67)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        BorderSide(color: Color(0xff53B175)))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff53B175)),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
