import 'package:class7/todoitem.dart';
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
        backgroundColor:  Color(0xFFEEEFFF),
        appBar:AppBar(
          backgroundColor: const Color(0xFFEEEFF5),
          elevation: 0,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu,color: Colors.black,),
              CircleAvatar(
                radius: 25,

                backgroundColor:Colors.grey[300] ,
                child: Image.asset('assets/images/avatar.png',),
              )
            ],
          )
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const TextField(
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.black,size: 20,),
                    hintText: 'Search'
                  ),
                  
                ),
              ),
              Expanded(

                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:50,bottom: 20 ),
                      child: Text("All To Do's",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                    ),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem()

                  ],

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
