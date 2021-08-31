import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //logo
            Container(
              child: Image.asset('assets/images/MaskGroup.png'),
            ),
            //Texy
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 24.53),
              child: Text('Get your groceries\nwith nectar',
                  style: TextStyle(
                      color: Color(0xff030303),
                      fontSize: 26,
                      fontStyle: FontStyle.normal)),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.53, right: 25.3, top: 31.46),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '+880',
                  labelStyle: TextStyle(color: Color(0xff030303)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/Rectangle11.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Center(
                child: Text('Or connect with social media',
                    style: TextStyle(color: Color(0xff828282))),
              ),
            ),
            //button Google
            Container(
              margin: EdgeInsets.only(top: 37.8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/NumberPage');
                },
                child: Wrap(
                  children: <Widget>[
                    SizedBox(width: 35.9),
                    Icon(FontAwesomeIcons.google,
                        color: Colors.white, size: 24.06),
                    SizedBox(width: 40),
                    Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 18, color: Color(0xffFCFCFC)),
                    ),
                    SizedBox(width: 81.64),
                  ],
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(364, 67)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xff5383EC)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff5383EC)),
                ),
              ),
            ),
            //button Facebook
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/NumberPage');
                },
                child: Wrap(
                  children: <Widget>[
                    SizedBox(width: 35.9),
                    Icon(FontAwesomeIcons.facebookF,
                        color: Colors.white, size: 24.06),
                    SizedBox(width: 35.91),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(fontSize: 18, color: Color(0xffFCFCFC)),
                    ),
                    SizedBox(width: 66.6),
                  ],
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(364, 67)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xff4A66AC)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff4A66AC)),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
