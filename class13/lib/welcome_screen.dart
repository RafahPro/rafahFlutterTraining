import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/boy.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Order and Receive Your Food Now',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              'Order food and get it delivered to your doorstep with few minutes',
              style: TextStyle(fontSize: 18, color: Colors.black26),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 80,
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
                      'Get Started',
                      style: TextStyle(fontSize: 18,color: Colors.white),

                    ),
                    // SizedBox(width: 10,),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,color: Colors.white,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
