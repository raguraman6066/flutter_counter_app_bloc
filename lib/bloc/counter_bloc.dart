import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';

//events are input to bloc
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    //event handlers
    on<CounterIncrement>((event, emit) {
      emit(state + 1);
    });
    on<CounterDecrement>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
