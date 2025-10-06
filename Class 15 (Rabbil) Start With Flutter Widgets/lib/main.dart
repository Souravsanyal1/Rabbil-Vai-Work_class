import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: HomePage(),
      );
  }
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter B4"),),
      body: Center(
        child: RichText(text: TextSpan(
            children: [
              TextSpan(text: "Hello",style: TextStyle(color: Colors.red,fontSize: 40)),
              TextSpan(text: "Flutter",style: TextStyle(color: Colors.blue,fontSize: 50)),
            ]
        )),
      ),
    );
  }
}

