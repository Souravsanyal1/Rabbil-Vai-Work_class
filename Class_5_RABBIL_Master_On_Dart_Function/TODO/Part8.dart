void main(){
  var result=factorial(5);
  print(result);
}


factorial(int x){

  // Stopping Condition
  if (x==0){
    return 1;
  }
  //5*4*3*2*1*0*-1*-2........................
  return x*factorial(x-1);
}

