import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.only(top: 70),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 63.44,
                    width: 64.32,
                    margin: EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      image: DecorationImage(
                        image: AssetImage('assets/images/imgeUser.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Afsar Hossen',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.pen,
                                size: 15,
                                color: Color(0xff53B175),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Imshuvo97@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff7C7C7C),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.black,
              ),
              AccountItem(
                image: 'assets/images/Orders_icon.png',
                name: "Orders",
              ),
              AccountItem(
                image: 'assets/images/My_Details_icon.png',
                name: "My Details",
              ),
              AccountItem(
                image: 'assets/images/Delicery_address.png',
                name: "Delivery Address",
              ),
              AccountItem(
                image: 'assets/images/Vector_icon.png',
                name: "Payment Methods",
              ),
              AccountItem(
                image: 'assets/images/Promo_Cord_icon.png',
                name: "Promo Cord",
              ),
              AccountItem(
                image: 'assets/images/Bell_icon.png',
                name: "Notifecations",
              ),
              AccountItem(
                image: 'assets/images/help_icon.png',
                name: "Help",
              ),
              AccountItem(
                image: 'assets/images/about_icon.png',
                name: "About",
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(bottom: 24.45, left: 25, right: 25),
                child: SizedBox(
                  width: double.infinity,
                  height: 67,
                  child: SubmitButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  const AccountItem({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);
  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 25, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('$image'),
                    SizedBox(width: 20),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff181725),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.chevronRight),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 25),
          Image.asset('assets/images/Group_6892.png'),
          SizedBox(width: 100),
          Container(
            child: Text(
              'Log  Out',
              style: TextStyle(fontSize: 18, color: Color(0xff53B175)),
            ),
          ),
        ],
      ),
      color: Color(0xffF2F3F2),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(23))),
    );
  }

  void onChangeLogin(BuildContext context) {
    print('hello');
  }
}
