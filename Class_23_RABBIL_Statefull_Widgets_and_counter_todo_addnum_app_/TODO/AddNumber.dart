import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  double num1=0;
  double num2=0;
  double sum=0;
  String title="Counter App";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title),),
        body: Padding(
          padding: EdgeInsets.all(40),
          child:  Center(
              child: Column(
                children: [

                  TextFormField(onChanged: (value){
                    setState(() {
                      num1=double.parse(value);
                    });
                  },),

                  SizedBox(height: 20,),

                  TextFormField(onChanged: (value){
                    setState(() {
                      num2=double.parse(value);
                    });
                  },),

                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sum=num1+num2;
                    });
                  }, child: Text("Add Number")
                  ),
                  SizedBox(height: 20,),
                  Text("NUM 1 is= ${num1.toString()}",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  Text("NUM 2 is= ${num2.toString()}",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  Text("SUM is= ${sum.toString()}",style: TextStyle(fontSize: 30),)
                ],
              )
          ),
        )
    );
  }
}