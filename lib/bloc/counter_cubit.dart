import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(countValue: 0, incremented: false));

  void increment() =>
      emit(CounterState(countValue: state.countValue + 1, incremented: true));

  void decrement() =>
      emit(CounterState(countValue: state.countValue - 1, incremented: false));
}
