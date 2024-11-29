import 'package:flutter/material.dart';
import 'package:foodstreet/Constantfile.dart';


class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantdata.mainbackgroun,
    );
  }
}
