import 'package:flutter/material.dart';

void main() {
  runApp( TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: const Color(0xFFEEEFF5),
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu,color: Colors.black,),
              CircleAvatar(
                backgroundColor:const Color(0xFFEEEFF5) ,
                child: Image.asset('assets/images/avatar.png'),
              )
            ],
          )
        )
      ),
    );
  }
}
