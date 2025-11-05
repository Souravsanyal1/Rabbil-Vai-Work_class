import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/CounterAppBloc.dart';

import 'CounterAppPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MultiBlocProvider(
          providers: [
            BlocProvider<CounterBloc>(
              create: (_)=>CounterBloc(),
            )
          ],
          child: CounterAppPage()
      )
    );
  }
}

