import 'package:flutter/material.dart';
import 'package:untitled7/Screens/AlarmFragment.dart';
import 'package:untitled7/Screens/EmailFragment.dart';
import 'package:untitled7/Screens/HomeFragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      color: Colors.blue,
      darkTheme: ThemeData(primarySwatch:Colors.amber),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  MySnackBar(msg,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg))
    );
  }


  List<Tab> tabs=[
    Tab(icon: Icon(Icons.home),text: 'Home',),
    Tab(icon: Icon(Icons.email),text: 'Email',),
    Tab(icon: Icon(Icons.notifications_active),text: 'Alarm',),
    Tab(icon: Icon(Icons.currency_bitcoin),text: 'Currency',),
  ];

  List<Widget> Fragments = [
    HomeFragment(),
    EmailFragment(),
    AlarmFragment(),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Intractives cares"),
            bottom: TabBar(
                isScrollable: false,
                tabAlignment: TabAlignment.fill,
                tabs: tabs
            ),
          ),
          body: TabBarView(
              children: Fragments
          ),
        )
    );
  }

}
