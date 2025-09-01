main(){
  person(name: "RABBIL",city: "DHAKA",age:35);
}


person({required String name,required String city,required int age}){
  print("My name is $name , city is $city and age is $age ");
}