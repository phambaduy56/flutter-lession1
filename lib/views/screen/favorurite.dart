import 'package:flutter/material.dart';

class Favorurite extends StatefulWidget {
  const Favorurite({Key? key}) : super(key: key);

  @override
  _FavoruriteState createState() => _FavoruriteState();
}

class _FavoruriteState extends State<Favorurite> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorurite'),
    );
  }
}
