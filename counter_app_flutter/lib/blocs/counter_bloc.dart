import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_app_flutter/events/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    // Lay Event de update State
  }
}