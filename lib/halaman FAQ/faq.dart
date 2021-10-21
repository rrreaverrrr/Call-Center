// ignore_for_file: deprecated_member_use

import 'package:call_center/Halaman%20pertanyaan/pertanyaan.dart';
import 'package:call_center/halaman landing/landing.dart';
import 'package:flutter/material.dart';

class faq extends StatefulWidget {
  const faq({ Key? key }) : super(key: key);

  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text('Informasi Beasiswa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),    
        backgroundColor: Color.fromRGBO(105, 169, 227, 40),
         leading: BackButton(
        onPressed: () =>
          Navigator.pop(context, false),
          
      ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      ),

body: ListView(
  
    
    children: <Widget>[

SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Pilih pertanyaan yang sesuai dengan", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                ),
                Container(
                alignment: Alignment.centerLeft,
                child: Text("yang ingin anda tanyakan", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                ),

                SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Jenis Beasiswa", style: TextStyle(fontSize: 20),),
                ),

                SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Informasi dan mekanisme pendaftaran beasiswa", style: TextStyle(fontSize: 20),),
                ),
SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Hak dan Kewajiban sebagai penerima beasiswa", style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Syarat Pengajuan dan Seleksi Penerima Beasiswa", style: TextStyle(fontSize: 20),),
                ),
  SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Pengumuman penerima beasiswa", style: TextStyle(fontSize: 20),),
                ),

                 SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Penghentian Beasiswa", style: TextStyle(fontSize: 20),),
                ),

                 SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Tidak menemukan pertanyaan anda?", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                ),
                Container(
                alignment: Alignment.centerLeft,
                child: Text("Klik disini untuk mengajukan pertanyaan", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
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
                return pertanyaan();
              }));
              
         
            },
            child: Text('Pertanyaan'),
          )
    ]
      

      ),


    );
  }
}