import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lession_01/views/screen/fliters.dart';

class ExploreDetail extends StatefulWidget {
  const ExploreDetail({Key? key}) : super(key: key);

  @override
  _ExploreDetailState createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Beverages',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
            size: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Filters()));
            },
            icon: Image.asset('assets/images/Group6839.png'),
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: GridView(
        shrinkWrap: true,
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        children: [
          ItemGritview(
            image: 'assets/images/pngfuel4.png',
            title: 'Beef Bone',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel5.png',
            title: 'Broiler Chicken',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel4.png',
            title: 'Beef Bone',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel4.png',
            title: 'Beef Bone',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel5.png',
            title: 'Broiler Chicken',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel4.png',
            title: 'Beef Bone',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel4.png',
            title: 'Beef Bone',
            description: '1kg, Priceg',
            price: 4.99,
          ),
          ItemGritview(
            image: 'assets/images/pngfuel5.png',
            title: 'Broiler Chicken',
            description: '1kg, Priceg',
            price: 4.99,
          ),
        ],
      ),
    );
  }
}

class ItemGritview extends StatelessWidget {
  const ItemGritview({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  final String image, title, description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (_) => ProductDetail()),
        // );
      },
      child: Container(
        width: 173,
        height: 248,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Color(0xffE2E2E2)),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      image,
                      width: 99,
                      height: 79,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
                  ),
                ),
                SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.67,
                      height: 45.67,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xff53B175),
                      ),
                      child: IconButton(
                        onPressed: () {
                          print('print button');
                        },
                        icon: Icon(FontAwesomeIcons.plus, color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
