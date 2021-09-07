import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lession_01/views/components/cart/order_accepted.dart';

class PopUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpState();
}

class PopUpState extends State<PopUp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  Tween<double> opacityTween = Tween<double>(begin: 0.0, end: 1.0);
  Tween<double> marginTopTween = Tween<double>(begin: 300, end: 280);
  late Animation<double> marginTopAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    marginTopAnimation = marginTopTween.animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacityTween.animate(controller),
      child: Material(
        color: Colors.transparent,
        child: Material(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: Color(0xffFFFFFF),
            ),
            margin: EdgeInsets.only(
              top: 100,
              bottom: 80,
              left: 25,
              right: 25,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(FontAwesomeIcons.times),
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18, bottom: 49),
                    child: Image.asset('assets/images/image_13.png'),
                  ),
                  Text(
                    'Oops! Order Failed',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 60),
                    child: Text(
                      'Something went tembly wrong.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7C7C7C),
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: SizedBox(
                      width: double.infinity,
                      height: 67,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Please Try Again',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        color: Color(0xff53B175),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(23))),
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
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
