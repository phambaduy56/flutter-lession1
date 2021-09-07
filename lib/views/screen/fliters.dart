import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.times,
            color: Colors.black,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(right: 30),
          child: Center(
            child: Text('Filters',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Color(0xffF2F3F2),
            ),
          ),
          Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60, left: 30),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    CheckboxGroup(
                      labels: <String>[
                        'Eggs',
                        'Noodles & Pasta',
                        'Chips & Crisps',
                        'Fast Food',
                      ],
                      onSelected: (List<String> checked) => print(
                        checked.toString(),
                      ),
                      activeColor: Color(0xff53B175),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 30),
                      child: Text(
                        'Brand',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    CheckboxGroup(
                      labels: <String>[
                        'Individual Callection',
                        'Cocola',
                        'Ifad',
                        'Kazi Farmas',
                      ],
                      onSelected: (List<String> checked) => print(
                        checked.toString(),
                      ),
                      activeColor: Color(0xff53B175),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, left: 25, right: 25),
                child: SizedBox(
                  width: double.infinity,
                  height: 67,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Apply Filter',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    color: Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(23))),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
