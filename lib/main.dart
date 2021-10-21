import 'package:call_center/halaman login/login.dart';
import 'package:call_center/halaman utama/utama.dart';
import 'package:call_center/halaman profil/profil.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Center',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}

