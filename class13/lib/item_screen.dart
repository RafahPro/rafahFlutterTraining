import 'package:flutter/material.dart';
class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool isFavorite = false;
  int counter = 01;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Pizza',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
        ),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;

              });
            },
            icon: Icon(
              Icons.favorite_border,
              color: isFavorite? Colors.red:Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,),
          Text('Mixed Pizza with beef,chilli and cheese',
            style: TextStyle(color: Colors.black26,fontSize: 16),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,color: Colors.yellow,),
              Text('4.5', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
SizedBox(width: 5,),
              Text('(958 Reviews)',style: TextStyle(color: Colors.black26),),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/Pizza.png',
              width: 400,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Calories',style: TextStyle(color: Colors.black26),),
                    Text('120',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    Text('Volume',style: TextStyle(color: Colors.black26),),
                    Text('12 Inch',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    Text('Distance',style: TextStyle(color: Colors.black26),),
                    Text('2 km',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Order',style: TextStyle(color: Colors.black26),),
                    Row(

                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              counter++;

                            });
                          },
                            child: Icon(Icons.add_circle_outline,color: Colors.black26,)),
                        SizedBox(width: 3,),
                        Text('${counter}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(width: 3,),
                        InkWell(
                            onTap: (){
                              setState(() {
                                counter--;

                              });
                            },
                            child: Icon(Icons.remove_circle_outline,color: Colors.black26,)),
                      ],
                    ),
                  ],

                ),

                Column(
                  children: [
                    Text('Delivery',style: TextStyle(color: Colors.black26),),
                    Text('Express',style: TextStyle(color: Colors.lightGreenAccent,fontWeight: FontWeight.bold),),
                  ],

                ),

                Column(
                  children: [
                    Text('Price',style: TextStyle(color: Colors.black26),),
                    Text('\$ 8.99',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                  ],

                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              height: 50,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 18,color: Colors.white),

                  ),
                  // SizedBox(width: 10,),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
