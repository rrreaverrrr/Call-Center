//package yang digunakan
import 'dart:convert';
import 'package:call_center/halaman%20landing/landing.dart';
import 'package:flutter/material.dart';

import 'package:from_css_color/from_css_color.dart';
import 'package:http/http.dart' as http;


void main(List<String> args) {
  runApp(MaterialApp(
    home: login(),
  ));
}

class login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState(); 
}
  
  class _LoginState extends State<login> {
     late String username, password;
    final _key = new GlobalKey<FormState>();

  var obscureText;

    check(){
      final form = _key.currentState;
      if(form!.validate()){
        form.save();
        login();
      }
    }
    
login() async{
  var post = Http.post("http://10.136.1.58/localhost/Call_Center/Login.php", Body: {
    "username" : username,
    "password" : password
  });
  final response = await post;


  final data = jsonDecode(response.Body);
  print(data);
}

bool _secureText = false;
showHide(){
  setState(() {
    _secureText = !_secureText;
  });
}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Form(
            key: _key,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                

//Gambar politeknik negeri batam
                SizedBox(height: 25,),
                Flexible(
                  child: 
                   new Image.asset("assets/POLITEKNIK NEGERI BATAM.png", )),

//text "Login"
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Login", style: TextStyle(fontSize: 20),),
                ), 
                
//text "Gunakan akun learning anda"
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Gunakan akun learning anda", style:TextStyle(fontSize: 12, color: Colors.black),)),

//fungsi ketika ingin typing muncul panduan berupa teks "masukkan username"
              SizedBox(height: 20,),
              TextFormField(              
                validator: (e) {
                  if(e!.isEmpty){
                    return "Masukkan username";
                  }
                },

//fungsi didalam textbox pada bagian atas nya saat di klik terdapat text "username"
              onSaved: (e) => username = e!,             
                  decoration: InputDecoration( 
                    contentPadding: EdgeInsets.all(-20),
                    prefixIcon: Icon(Icons.person, size: 20,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    labelText: "Username", 
                    
                  ),
              ),
              
//fungsi ketika ingin typing muncul panduan berupa teks "masukkan password"
SizedBox(height: 25,),
                TextFormField(
                  validator: (e){
                    if(e!.isEmpty){
                      return "Masukkan Password";
                    }
                  },

//fungsi jika typing password bisa di hide
//fungsi didalam textbox pada bagian atas nya saat di klik terdapat text "password"
                  obscureText: _secureText,
                  onSaved: (e) => password = e!,

//untuk desain textbox
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(-20),
                    prefixIcon: Icon(Icons.lock, size: 20,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: "password",
                    suffixIcon: IconButton(

//fungsi typing bisa di sembunyikan dah ditampilkan
                      onPressed: showHide,
                      icon: Icon(
                        _secureText ? Icons.visibility_off : Icons.visibility
                      ),
                    ),
                  ),
                  ),

// Tombol login
                SizedBox(height: 30,),
ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(105, 169, 227, 40),
              onPrimary: Colors.white,
             
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(100, 40), 
            ),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return landing();
              }));
              
         
            },
            child: Text('Login'),
          )
  ],
),
    ),
   ), 
  );
 }
}

class Http {
  static post(String s, {Map<String, String>? Body}) {}
}
