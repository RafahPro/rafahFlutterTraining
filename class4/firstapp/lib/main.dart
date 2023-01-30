import 'package:flutter/material.dart';

void main()
{
  runApp(WelcomeApp());
}

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('دورة الفلاتر'),
        ),
        body: Center(
          child: Text('Ahmed Hammad',style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
