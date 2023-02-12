import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xEBEAEFD0),
      appBar: AppBar(
        backgroundColor: Color(0xC4DA5EEB),
        elevation: 0,
        title: const Text('My Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            CircleAvatar(
              radius: 125.0,
              backgroundColor: Color(0xCBB3B2FF),
              child: CircleAvatar(
                radius: 120.0,
                backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20190321/ourlarge/pngtree-vector-users-icon-png-image_856952.jpg'),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
             Text(
              'م. أحمد حماد',
              style: GoogleFonts.cairo(fontSize: 20.0,color: Colors.blue),
              ),
            Text(
              'مديرية التربية والتعليم رفح',
              style: GoogleFonts.cairo(fontSize: 20.0),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text(
                  '+972 599 742 821',
                  style: GoogleFonts.cairo(fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                title: Text(
                  'eng.ahammad@gmail.com',
                  style: GoogleFonts.cairo(fontSize: 20.0),
                ),
              ),
            ),


          ],
        ),
      ),);
  }
}
