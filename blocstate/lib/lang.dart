import 'package:blocstate/bloc/lang_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LangScreen extends StatelessWidget {
  const LangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<LangBloc, LangState>(builder: ((context, state) {
              if (state is LangChangeState) {
                return Text(state.lang);
              } else {
                return Text('ar');
              }
            })),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LangBloc>(context).add(LangArabicEvent());
                    },
                    child: Text(
                      'Arabic',
                      style: TextStyle(fontSize: 24),
                    )),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LangBloc>(context)
                          .add(LangEnglishEvent());
                    },
                    child: Text(
                      'English',
                      style: TextStyle(fontSize: 30),
                    )),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LangBloc>(context).add(LangFrenchEvent());
                    },
                    child: Text(
                      'French',
                      style: TextStyle(fontSize: 30),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
