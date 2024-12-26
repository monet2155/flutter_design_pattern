import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';

// BLoC: 이벤트를 처리하고 상태를 업데이트
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounter>((event, emit) => emit(state + 1));
    on<DecrementCounter>((event, emit) => emit(state - 1));
  }
}
