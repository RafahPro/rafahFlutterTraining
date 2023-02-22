import 'package:flutter/material.dart';

import 'item_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> foods=['Burger','Snacks','Pizza','Water'];
    List<Color> colors=[Colors.red.shade100,Colors.blue.shade100,Colors.green.shade100,Colors.yellow.shade100];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Deliver to',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.red,),
                          Text('New York,Usa'),
                          Icon(Icons.arrow_drop_down,color: Colors.black,)
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width:50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child:Image.asset('assets/images/profile.jpg')
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        //  child: Center(child: Text('2',style: TextStyle(color: Colors.white,fontSize: 12),)),
                        ),
                      )
                    ],
                    
                  ),

                ],
              ),
              const SizedBox(
                height:10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for food or resturant',
                            hintStyle: TextStyle(color: Colors.black26),
                            prefixIcon: Icon(Icons.search,color: Colors.black26,),
                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black26),

                            ),
                            // filled: true,
                            // fillColor: Colors.grey.shade200
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                        width:50,
                        height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child:Icon(Icons.filter_list,color: Colors.white,size: 30,)),
                  ],
                ),
              ),
              const SizedBox(
                height:10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Image.asset('assets/images/banner.jpg'),
                ),
              ),
              const SizedBox(
                height:10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w900),),
                    Text('See All',style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),)
                  ],
                ),
              ),
              const SizedBox(
                height:10,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: foods.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (context,index)
                {
                  return Container(
                    width: 100,

                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color:colors[index],
                      borderRadius: BorderRadius.circular(10)

                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/${foods[index]}.png',height: 80,width: 80,),
                          Text(foods[index],style: const TextStyle(color: Colors.black54,fontSize:16,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  );
                }),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w900),),
                    Text('See All',style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),)
                  ],
                ),
              ),
              const SizedBox(
                height:10,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: foods.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (context,index)
                    {
                      return Container(
                        width: 300,


                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color:Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)

                        ),
                        child: Column(


                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),


                              child: Image.asset('assets/images/ChickenBurger.jpg',height: 200,width: 300,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chicken Burger',style: const TextStyle(color: Colors.black54,fontSize:16,fontWeight: FontWeight.bold),),
                                Text('Fast Food',style: const TextStyle(color: Colors.black12,fontSize:16,fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.red,),
                                      Text('4.5',style: const TextStyle(color: Colors.black54,fontSize:16,fontWeight: FontWeight.bold),),
                                      Text('(20 Reviews)',style: const TextStyle(color: Colors.black12,fontSize:16,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
