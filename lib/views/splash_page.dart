import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lession_01/views/onbording_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => OnbordingPage()));
      Navigator.pushNamed(context, '/OnbordingPage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff53b175),
      body: Center(
        child: Image.asset("assets/images/logo1.png"),
      ),
    );
  }
}
