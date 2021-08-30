import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  _NumberPageState createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/SingIn');
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
            SizedBox(height: 140, width: double.infinity),
            SingleChildScrollView(
              // child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 25.12),
                    child: Text('Enter your mobile number',
                        style: TextStyle(fontSize: 26, color: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.12, top: 27.58),
                    child:
                        Text('Mobile Number', style: TextStyle(fontSize: 16)),
                  ),
                  _txtNumber(),
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
            Navigator.pushNamed(context, '/VerificationPage');
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
          labelText: '+880',
          labelStyle: TextStyle(color: Color(0xff030303)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/Rectangle11.png'),
          ),
        ),
      ),
    );
  }
}
