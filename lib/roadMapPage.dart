import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class map_screen extends StatefulWidget {
  final String rmapp;
  const map_screen({super.key, required this.rmapp});

  @override
  State<map_screen> createState() => _map_screenState();
}

class _map_screenState extends State<map_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
        backgroundColor: const Color(0xFF101116),
    elevation: 0,
    leading:

    Image.asset("assets/logo.png", height: 40, width: 60,),
    title:
    Row(
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text(
    "Dev Flow",
    style: TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    ),
    ),
    ])
    ]
    ),
    actions: <Widget>[
    IconButton(
    icon: Icon(Icons.arrow_back , color: Colors.white,),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    ]),
    body: Center(
     child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(widget.rmapp)
      ],
    )))
    );
  }
}
