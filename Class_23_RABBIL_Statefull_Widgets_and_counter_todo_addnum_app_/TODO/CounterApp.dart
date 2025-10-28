import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int countNumber=0;
  int num1=0;
  int num2=0;
  String title="Counter App";

  counter(){
    setState(() {
      countNumber=countNumber+1;
      title="Counter App ${countNumber.toString()}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title),),
        body: Center(
          child: Text(countNumber.toString(),style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            counter();
          },
          child: Icon(Icons.add),
        )
    );
  }
}