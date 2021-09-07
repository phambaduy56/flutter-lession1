import 'package:flutter/material.dart';

class Mota extends StatelessWidget {
  const Mota({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff181725),
                ),
              ),
              TextButton(
                onPressed: () {
                  print('see all');
                },
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff53B175),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
