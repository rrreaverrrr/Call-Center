// ignore_for_file: unused_field


import 'package:call_center/halaman%20FAQ/faq.dart';
import 'package:flutter/material.dart';
import 'package:call_center/halaman profil/profil.dart';
import 'package:call_center/halaman utama/utama.dart';


class landing extends StatefulWidget {
  const landing({Key? key}) : super(key: key);

  static const String _title = '';

  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(                
      title: landing._title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Material gustav(String gambar, String text, int color) {
  return Material(
    child: Center(
      child:  Padding(
        padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[         
          Container(           
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
         
         children: <Widget>[
            Container(
              height: 30,
              alignment: Alignment.center,
              child: Text(text, style: TextStyle(color: Color(color), fontSize: 16.0,))),

             Flexible(
               child: Padding(padding: const EdgeInsets.all(8.0),
            child: Image.asset(gambar),),
             ),
          ],
          ),
          ),
        ],
      )
    )),
  );
}
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _children =
  [
    utama(),
    profil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(129, 205, 192, 10),
      body: Form(      
        child: 
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Selamat datang,", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),

                SizedBox(height: 10,), 
                Container(
                alignment: Alignment.centerLeft,
                child: Text("Gustav Felix Musa", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),

SizedBox(height: 30,), 
                Container(
                alignment: Alignment.centerLeft,
                child: Text("Akses informasi perkuliahan", style: TextStyle(fontSize: 16),),
                ),
                 Container(
                alignment: Alignment.centerLeft,
                child: Text("anda disini", style: TextStyle(fontSize: 16),),
                ),
                
SizedBox(height: 20,),
Flexible(
  child: OrientationBuilder(  
      builder: (BuildContext context, Orientation orientation) 
      {
        return GridView.count(
          shrinkWrap: true,
          crossAxisCount  : 1,
           crossAxisSpacing: 20.0,
           mainAxisSpacing: 20.0,
           padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
           
          
children: <Widget>[
  
   Material(
     child: InkWell(
       onTap: () {},
    child: 
    gustav( "assets/Beasiswa.png", "Beasiswa", 0xff0080000)),
   
   ),

   Material(
                 child: InkWell(
                   onTap: () {
                     Navigator.pushReplacement(context, 
                     MaterialPageRoute(builder: (context) {
                       return faq();
                     }));
                   },
                child: 
                gustav( "assets/Beasiswa.png", "Beasiswa", 0xff0080000)),
               
               ),
   Material(
                 child: InkWell(
                   onTap: () {},
                child: 
                gustav( "assets/Beasiswa.png", "Beasiswa", 0xff0080000)),
               
               ),
],
        );
      },
),
),
            ],
          ),
        ),
      ),
    
    
    
    
      
      bottomNavigationBar: 
      Container( 
        child:BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            
            label: 'Home', 
            
            backgroundColor: Colors.blueGrey, 
            
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        
      ),

      ),
    );
  }
}
