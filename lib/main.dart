//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lession_01/views/Login/login_page.dart';
import 'package:lession_01/views/Login/singup_page.dart';
import 'package:lession_01/views/SingIn/Number_page.dart';
import 'package:lession_01/views/SingIn/SingIn.dart';
import 'package:lession_01/views/SingIn/Verification_page.dart';
import 'package:lession_01/views/SingIn/location_page.dart';
import 'package:lession_01/views/navbar/nav.dart';
import 'package:lession_01/views/onbording_page.dart';
import 'package:lession_01/views/screen/product_detail.dart';
import 'package:lession_01/views/splash_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    title: 'Hello',
    home: MyHome(),
    initialRoute: '/',
    routes: {
      "/OnbordingPage": (context) => OnbordingPage(),
      "/SingIn": (context) => SingIn(),
      '/NumberPage': (context) => NumberPage(),
      '/VerificationPage': (context) => VerificationPage(),
      '/LocationPage': (context) => LocationPage(),
      '/LoginPage': (context) => LoginPage(),
      '/SingupPage': (context) => SingupPage(),
      '/NavPage': (context) => nav(),
    },
  ));
}
