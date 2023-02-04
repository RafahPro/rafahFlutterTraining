
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoApp(),
  ));
}

class TodoApp extends StatefulWidget {

  const TodoApp({Key? key}) : super(key: key);



  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List todoList=[
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];
  @override
  Widget build(BuildContext context) {

    TextEditingController taskController=TextEditingController();

    void addnewTask() {
      setState(() {
        todoList.add([taskController.text,false]);
        print(todoList);
      });
      Navigator.of(context).pop();


    }
    checkDoneTask(int index)
    {
      setState(() {
        todoList[index][1]=!todoList[index][1];
      });
    }

    deleteTask(int index)
    {
      setState(() {
        todoList.removeAt(index);
      });
    }



    return Scaffold(
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

                child: ListView.builder(

                  itemCount: todoList.length,
                  itemBuilder: (context,index)
                  {
                    return  Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          onTap: () {
                            checkDoneTask(index);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          tileColor: Colors.white,
                          leading:  todoList[index][1]?  Icon(Icons.check_box, color: Colors.blueAccent,):Icon(Icons.check_box_outline_blank),
                          title: Text(todoList[index][0],
                            style: TextStyle(fontSize: 15, color: Colors.black),),
                          trailing: IconButton(
                            onPressed: () {
                             deleteTask(index);
                            }, icon: Icon(Icons.delete, color: Colors.red),

                          ),
                        )


                    );
                  }



                ),
              )

            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){
          showModalBottomSheet(
              elevation: 10,
              context: context,
              builder: (context)
              {


            return Container(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 15),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black12
                    ),
                    child:  TextField(
                      controller: taskController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Task'),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 150,
                          height: 50,
                          color: Colors.deepOrangeAccent,
                          child: MaterialButton(

                              onPressed: () {

                                addnewTask();
                                print(todoList.length);
                              }, child: const Text('Add Task',style: TextStyle(color: Colors.white,fontSize: 20),))

                      ),
                      Container(
                          width: 150,
                          height: 50,
                          color: Colors.deepOrangeAccent,
                          child: MaterialButton(

                              onPressed: () {
                                Navigator.of(context).pop();
                              }, child: const Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 20),))

                      )
                    ],
                  )

                ],


              ),
            );
          }

          );
        },child: Icon(Icons.add),),

    );
  }
}


