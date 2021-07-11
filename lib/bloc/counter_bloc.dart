import 'package:bloc_counter/enums/counte_enums.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0);

  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    switch (event) {
      case CounterEvents.increment:
        yield state + 1;
        break;
      case CounterEvents.decrement:
        yield state - 1;
    }
  }
}
