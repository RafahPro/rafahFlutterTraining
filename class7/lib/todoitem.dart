import 'package:flutter/material.dart';
class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: Colors.blueAccent,),
        title: Text('Study For Math Quiz',
          style: TextStyle(fontSize: 15, color: Colors.black),),
        trailing: IconButton(
          onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red),

        ),
      )


    );

  }
}