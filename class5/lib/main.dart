import 'package:flutter/material.dart';
void main()
{
runApp(Class5());
}

class Class5 extends StatelessWidget {
  const Class5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('Introduction to Flutter',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.greenAccent),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Ahmed'), accountEmail: Text('ahmed@gmail.com')),
              Text('Home'),
              Text('Exit')
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(
                child: Text('What is Container?',style:
                  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                image:DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage('https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg')),
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(
                child: Text('Travel with Us',style:
                TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 25),),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Click Me'))
          ],
        ),

      ),

    );
  }
}
