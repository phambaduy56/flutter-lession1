import 'package:flutter/material.dart';

class Groceries extends StatelessWidget {
  const Groceries({
    Key? key,
    required this.name,
    required this.image,
    required this.hexColor,
  }) : super(key: key);

  final String name, image, hexColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 105,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Color(0xffE2E2E2)),
        color: Color(int.parse('0x26$hexColor')),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 15),
                child: Image.asset(
                  image,
                  width: 72,
                  height: 72,
                ),
              ),
              Text(name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
