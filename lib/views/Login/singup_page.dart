import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({Key? key}) : super(key: key);

  @override
  _SingupPageState createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/MaskGroup2.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: EdgeInsets.only(right: 25, left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: double.infinity),
                Center(child: Image.asset('assets/images/Group3.png')),
                SizedBox(height: 100),
                Text(
                  'Sing Up',
                  style: TextStyle(
                    fontSize: 26,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Enter your credentials to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: -2,
                      child: Icon(FontAwesomeIcons.eyeSlash, size: 19),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          'By continuing you agree to our ',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Terms of Service ',
                          style: TextStyle(
                            color: Color(0xff53B175),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('and ', style: TextStyle(fontSize: 14)),
                    Text(
                      'Privacy Policy ',
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 67,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Singup',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    color: Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(23))),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Singup',
                        style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
