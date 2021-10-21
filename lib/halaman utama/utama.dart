import 'package:call_center/halaman%20login/login.dart';
import 'package:call_center/halaman%20profil/profil.dart';
import 'package:flutter/material.dart';

class utama extends StatefulWidget {
  const utama({ Key? key }) : super(key: key);

  @override
  _utamaState createState() => _utamaState();
}

class _utamaState extends State<utama> {

  // Material untuk gridview
Material gustav(String gambar, String text, int color) {
  return Material(
    child: Center(
      child:  Padding(
        padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[

          
          Flexible(
            child: 
            Container(
              height: 200,
              width: 200,
              child: Card(
              
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
         
         children: <Widget>[
              Flexible(
                 child: 
                 Container(
                   height: 30,
                   alignment: Alignment.center,
                   child: Text(text, style: TextStyle(color: Color(color), fontSize: 16.0,)))
               ),

               Flexible(
                 child: Padding(padding: const EdgeInsets.all(8.0),
              child: Image.asset(gambar),),
               ),
          ],
          ),
          ),
            )),
        ],
      )
    )),
  );
}
// </material>

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     //app bar
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text('Halaman Utama', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),    
        backgroundColor: Color.fromRGBO(105, 169, 227, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      ),
      // </app bar>


    // body (gridview)
    body: 
    
    OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return GridView.count(
          crossAxisCount  : orientation == Orientation.portrait ? 2 : 3,
           crossAxisSpacing: 10.0,
           mainAxisSpacing: 10.0,
           padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),

           
           
           children: <Widget> [
             Container(              
               child: Material(
                 child: InkWell(
                   onTap: () {},
                child: 
                gustav( "assets/Beasiswa.png", "Beasiswa", 0xff0080000)),
                 ),
               ),
               Container(
                 child: Material(
                   child: InkWell(
                    onTap: (){
                     
                     Navigator.pushReplacement(context, 
                     MaterialPageRoute(builder: (context) {
                       return profil();
                     }));
                     },      
                     child: gustav("assets/building.png", "tes", 0xff0080000 )
                   ),
                 ),
               ),
                 Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/friendship.png", "Alumni", 0xff0080000 )
                     )
                     )
                     ),

                      Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan yang bukan terlalu terang", 0xff0080000 )
                     )
                     )
                     ),
                      Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan", 0xff0080000 )
                     )
                     )
                     ),
                           Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan", 0xff0080000 )
                     )
                     )
                     ),
                           Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan", 0xff0080000 )
                     )
                     )
                     ),
                           Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan", 0xff0080000 )
                     )
                     )
                     ),
                           Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan", 0xff0080000 )
                     )
                     )
                     ),
                           Container(
                 child: Material(
                   child: InkWell(
                     onTap: () {},
                     child: gustav("assets/sertifikat.png", "Surat Keterangan", 0xff0080000 )
                     )
                     )
                     ), 
           ],
          );
      },
    ), 
    
    );   
  }
}
// </body>

