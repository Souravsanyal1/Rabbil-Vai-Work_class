import 'dart:convert';
import 'package:http/http.dart' as http;

void main(){
  fun1();
}


Future fun1()async{
  try{
    print("Loading Fun1 ....");
    final url=Uri.parse("https://countrylist.teamrabbil.com/api/country-list");
    final response= await http.get(url);
    final data=jsonDecode(response.body);
    print(data);
  }catch(e){
    print(e);
  }
}

