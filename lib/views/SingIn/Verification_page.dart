import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  static const String routerName = '/VerificationPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/NumberPage');
          },
          icon: Icon(FontAwesomeIcons.chevronLeft, color: Color(0xff181725)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      floatingActionButton: ActionButton(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/MaskGroup2.png'),
              fit: BoxFit.cover),
        ),
        //child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 140,
              width: double.infinity,
            ),
            SingleChildScrollView(
              // child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 25.12),
                    child: Text('Enter your 4-digit code',
                        style: TextStyle(fontSize: 26, color: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.12, top: 27.58),
                    child: Text('Code', style: TextStyle(fontSize: 16)),
                  ),
                  _txtNumber(),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    alignment: Alignment.bottomLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Resend Code',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff53B175)))),
                  )
                ],
              ),
            ),
            //),
          ],
        ),
        // ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      width: 67,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/LocationPage');
          },
          child: Icon(FontAwesomeIcons.chevronRight),
          backgroundColor: Color(0xff53B175),
        ),
      ),
    );
  }
}

class _txtNumber extends StatelessWidget {
  const _txtNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.12, right: 24.76, top: 10.85),
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
          labelText: '- - - -',
          labelStyle: TextStyle(color: Color(0xff030303)),
          // prefixIcon: Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Image.asset('assets/images/Rectangle11.png'),
          // ),
        ),
      ),
    );
  }
}
