import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_app_flutter/events/counter_event.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0; // Phai khoi tao gia tri ban dau cho State, khong duoc de Null

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    // Lay Event de update State
    print(state); // State hien tai
    switch (event) {
      case CounterEvent.increment:
        var newState = state + 1;
        yield newState;
        break;
      case CounterEvent.decrement:
        var newState = state - 1;
        yield newState;
        break;
    }
  }
}