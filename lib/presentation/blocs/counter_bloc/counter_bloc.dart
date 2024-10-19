import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  // Constructor with body
  CounterBloc() : super(const CounterState()) {

    // handler of counter event, on == when
    on<CounterIncreased>(_onCounterIncreased);
    on<CounterReset>(_reset);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: state.counter + event.value,
      transactionCount: state.transactionCount + 1
    ));
  }

  void _reset(CounterReset event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: 0
    ));
  }

}

