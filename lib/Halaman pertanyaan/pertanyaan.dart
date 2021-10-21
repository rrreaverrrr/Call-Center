import 'package:call_center/halaman FAQ/faq.dart';
import 'package:call_center/halaman%20notif%20centang/centang.dart';
import 'package:flutter/material.dart';

class pertanyaan extends StatefulWidget {
  const pertanyaan({ Key? key }) : super(key: key);

  @override
  _pertanyaanState createState() => _pertanyaanState();
}

class _pertanyaanState extends State<pertanyaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        centerTitle: true,
         title: Text('Akun Saya', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),), 
         backgroundColor: Color.fromRGBO(105, 169, 227, 40),
        leading: BackButton(
        onPressed: () =>
          Navigator.pop(context, false),
          
      ),
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
),
      body: Form(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
         child: Column(

            children: <Widget>[
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.topLeft,
                child: Text("Masukkan pertanyaan anda disini.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                 
              Container(
                alignment: Alignment.topLeft,
                child: Text("disini.", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              ),
              
              SizedBox(height: 30,),
                  TextFormField(  
                  
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(  
                      
                       contentPadding: new EdgeInsets.symmetric(vertical: 165.0, horizontal: 10.0),
                      border: OutlineInputBorder(),  
                    
                      hintText: 'Pertanyaan',   
                    ),  
                  ), 
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
                return centang();
              }));
              
         
            },
            child: Text('kirim'),
          )
            ],
          ),
        )),     
    );
  }
}