import 'package:flutter_bloc/flutter_bloc.dart';

// (1) Events Parent Abstract Class
abstract class CounterEvent{}

// (2) Events Child Class
class Increment extends CounterEvent{}
class Decrement extends CounterEvent{}


// (3) Create Class Component Bloc<Event,DataType>
class CounterBloc extends Bloc<CounterEvent,int>{

    // (4) Write Your Variable According to DataType
    int counter=0;

    //(4) Create Constructor With Initial Value
    CounterBloc():super(0){
      //(5) Assign Event With Function Inside Constructor
      on<Increment>(onIncrement);
      on<Decrement>(onDecrement);
    }


    //(6) Value Changes Private Function
    //(7) Params: Specific Event , Emitter
    onIncrement(Increment event,Emitter<int> emit){
          counter=counter+1;
          emit(counter);
    }

    onDecrement(Decrement event, Emitter<int> emit){
      counter=counter-1;
      emit(counter);
    }

}