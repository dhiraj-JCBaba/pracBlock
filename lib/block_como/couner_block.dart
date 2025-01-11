import 'package:flutter_bloc/flutter_bloc.dart';
import 'block_Events.dart';
import 'block_State.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<Increment>((event, emit) {
      emit(CounterState(state.counterValue + 1));
    });
    on<Decrement>((event, emit) {
      emit(CounterState(state.counterValue - 1));
    });
    on<Multiplication>((event,emit) {
      emit(CounterState(state.counterValue * state.counterValue));
    });
  }
}
