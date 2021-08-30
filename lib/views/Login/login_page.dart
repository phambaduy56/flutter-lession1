import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Center(child: Image.asset('assets/images/Group3.png')),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Text(
                    'Loging',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff181725),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Enter your emails and password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7C7C7C),
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7C7C7C),
                            )),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: -2,
                      child: Icon(FontAwesomeIcons.eyeSlash, size: 19),
                    ),
                    //Icon(FontAwesomeIcons.eyeSlash, size: 19),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      //constraints: ,
                      child: Text('Forgot Password?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff181725),
                          )),
                    ),
                  ],
                ),
                //button
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 67,
                    child: SubmitButton(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () => onChangeSingup(context),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onChangeSingup(BuildContext context) {
    Navigator.pushNamed(context, '/SingupPage');
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
        'Submit',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      color: Color(0xff53B175),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(23))),
    );
  }

  void onChangeLogin(BuildContext context) {
    Navigator.pushNamed(context, '/LoginPage');
  }
}
