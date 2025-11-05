import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/CounterAppBloc.dart';

class CounterAppPage extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

   final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(title: Text("Counter APP"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            BlocBuilder<CounterBloc,int>(
                builder: (context,count){
                  return Text(count.toString(),style: TextStyle(fontSize: 60));
                }
            ),



            ElevatedButton(onPressed: ()=>{
             counterBloc.add(Increment())
            }, child: Text("+")),


            ElevatedButton(onPressed: ()=>{
              counterBloc.add(Decrement())
            }, child: Text("-"))


          ],
        )
      ),
    );
  }

}