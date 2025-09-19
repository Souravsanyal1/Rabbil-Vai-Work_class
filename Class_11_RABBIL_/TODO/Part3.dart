import 'dart:convert';
import 'package:http/http.dart' as http;

void main(){
  all();
}

Future all()async{
  Future.wait([
    fun1(),
    fun2(),
    fun3()
  ]);
}

Future fun1()async{
  print("Loading Fun1 ....");
  final url=Uri.parse("https://countrylist.teamrabbil.com/api/country-list");
  final response= await http.get(url);
  final data=jsonDecode(response.body);
  print(data);
}

Future fun2()async{
  print("Loading Fun2....");
  final url=Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
  final response= await http.get(url);
  final data=jsonDecode(response.body);
  print(data);
}

Future fun3()async{
  print("Loading Fun3...");
  final url=Uri.parse("https://jsonplaceholder.typicode.com/todos/2");
  final response= await http.get(url);
  final data=jsonDecode(response.body);
  print(data);
}