import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:isolate';

void main(){
  Isolate.run(()=>sum100());
  fun1();
}


int sum100(){
  int x=0;
  final nums=List.generate(100, (i)=>i+1); // [1.2.3.4...100]
  for(final n in nums){
    x+=n;
  }
  return x;
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



