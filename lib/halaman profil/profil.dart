import 'package:call_center/halaman%20login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profil extends StatefulWidget {
  const profil({ Key? key }) : super(key: key);

  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
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

body: Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
Container(
      width: 150.0,
      height: 150.0,
      decoration: 
      new BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      
        ),
      ),

      SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                child: Text("Nama lengkap mhs", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                ), 

SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                child: Text("username", style: TextStyle(fontWeight: 
                FontWeight.bold ,fontSize: 20),),
                ), 
                Container(
                alignment: Alignment.center,
                child: Text("uname", style: TextStyle(fontSize: 20),),
                ), 

SizedBox(height: 20,),
                Container(
                alignment: Alignment.center,
                child: Text("NIM", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                ), 

                Container(
                alignment: Alignment.center,
                child: Text("nim", style: TextStyle(fontSize: 20),),
                ), 

                SizedBox(height: 20,),
                Container(
                alignment: Alignment.center,
                child: Text("Program Studi", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                ), 

                Container(
                alignment: Alignment.center,
                child: Text("prodi", style: TextStyle(fontSize: 20),),
                ), 

SizedBox(height: 30,),
                 // ignore: deprecated_member_use
                 RaisedButton(
                color: Color.fromRGBO(245, 45, 45, 100),

//fungsi button login
                     onPressed: (){
                  
                     Navigator.pushReplacement(context, 
                     MaterialPageRoute(builder: (context) {
                       return login();
                     }));
                     },                       
                     child: Text("Logout", style: TextStyle(fontSize: 15, color: Colors.white),),
      ),





 ],

)
),
);
}
}