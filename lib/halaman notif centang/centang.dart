import 'package:flutter/material.dart';

class centang extends StatefulWidget {
  const centang({ Key? key }) : super(key: key);

  @override
  _centangState createState() => _centangState();
}

class _centangState extends State<centang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
                   new Image.asset("assets/check.png", height: 300, width: 300,),
      ),
    );
  }
}