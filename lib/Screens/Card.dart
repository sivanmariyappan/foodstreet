import 'package:flutter/material.dart';
import 'package:foodstreet/Constantfile.dart';

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantdata.mainbackgroun,
    );
  }
}
