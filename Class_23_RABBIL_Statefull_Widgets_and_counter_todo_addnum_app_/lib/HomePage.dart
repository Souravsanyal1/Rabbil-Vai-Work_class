import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  TextEditingController textEditingController=TextEditingController();

  String item="";
  List TodoList= [];

  setItem(value){
    setState(() {
      item=value;
    });
  }

  addItem(){
    setState(() {
      TodoList.add({'key':item});
    });
    textEditingController.clear();
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Todo List App"),),
        body: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                TextFormField(
                  controller: textEditingController,
                  onChanged: (value){
                    setItem(value);
                  },

                ),

                SizedBox(height: 30),

                ElevatedButton(onPressed: (){
                  addItem();
                }, child: Text("Add")),

                SizedBox(height: 30),

                Expanded(
                    child: ListView.builder(
                      itemCount: TodoList.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          title: Text(TodoList[index]['key'].toString() ?? ''),
                          leading: Icon(Icons.add),
                        );
                      },
                    )
                )
              ],
            )
        )
      );
  }
}