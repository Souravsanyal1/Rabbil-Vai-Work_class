main(){
  addTwo();
  addTwo(1);
  addTwo(1,2);
  addTwo(1,2,3);
}

addTwo([double a=100,double b=100,double c=100]){
  var x=a;
  var y=b;
  var z=c;
  var sum=x+y+z;
  print(sum);
}