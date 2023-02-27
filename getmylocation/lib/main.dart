import 'package:flutter/material.dart';

import 'home_screen.dart';
void main()
{
  runApp(GetMyLocation());
}

class GetMyLocation extends StatelessWidget {
  const GetMyLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}
