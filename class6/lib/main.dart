import 'package:flutter/material.dart';
void main() {

  runApp(TodoApp());
}
class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextFormField(
                  decoration:InputDecoration(
                      prefixIcon: Icon(Icons.search)
                  ),

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [

                  ],
                ),
                margin: EdgeInsets.all(10),
                height:150 ,
                decoration: BoxDecoration(
                    color: Colors.lightBlue[300],
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height:150 ,
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(20)
                ),
              ),

            ],
          ),

        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),

    );
  }
}
