import 'dart:convert';
import 'package:http/http.dart' as http;

void main(){
  fetchTodoData();
}

Future downloadFiles()async{
  print("Loading....");
  await Future.delayed(Duration(seconds: 10));
  print("Flutter Batch 04");
}


Future fetchTodoData()async{
  print("Loading....");
  final url=Uri.parse("https://countrylist.teamrabbil.com/api/country-list");
  final response= await http.get(url);
  final data=jsonDecode(response.body);
  print(data);
}