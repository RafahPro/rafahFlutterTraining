import 'package:blocstate/bloc/lang_bloc.dart';
import 'package:blocstate/lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LangBloc(),
      child: MaterialApp(
        home: LangScreen(),
      ),
    );
  }
}
