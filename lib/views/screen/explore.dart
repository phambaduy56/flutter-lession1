import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity, height: 56.93),
              Text(
                'Find Products',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF2F3F2),
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 8),
                      child: Icon(FontAwesomeIcons.search, size: 18),
                    ),
                    TextField(
                      /// maxLengthEnforced: true,
                      decoration: InputDecoration(
                        hintText: 'Search Store',
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
                        contentPadding: EdgeInsets.only(left: 40),
                        border: InputBorder.none,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(15),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  mainAxisExtent: 189,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                ),
                children: [
                  ItemGritview(
                    imgage: 'assets/images/pngfuel11.png',
                    name: 'Frash Fruits & Vegetable',
                    hexColor: '0x1A53B175',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel12.png',
                    name: 'Cooking Oil & Ghee',
                    hexColor: '0x1AF8A44C',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel13.png',
                    name: 'Meat & Fish',
                    hexColor: '0x40F7A593',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel14.png',
                    name: 'Bakery & Snacks',
                    hexColor: '0x40F7A593',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel14.png',
                    name: 'Dairy & Eggs',
                    hexColor: '0x40D3B0E0',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel14.png',
                    name: 'Beverages',
                    hexColor: '0x40FDE598',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel14.png',
                    name: 'Beverages',
                    hexColor: '0x40FDE598',
                  ),
                  ItemGritview(
                    imgage: 'assets/images/pngfuel14.png',
                    name: 'Beverages',
                    hexColor: '0x40FDE598',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemGritview extends StatelessWidget {
  const ItemGritview({
    Key? key,
    required this.imgage,
    required this.name,
    required this.hexColor,
  }) : super(key: key);

  final String imgage, name, hexColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hello");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Color(0xffE2E2E2)),
          color: Color(int.parse('$hexColor')),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 15),
                  child: Image.asset(
                    imgage,
                    width: 111,
                    height: 74,
                  ),
                ),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
