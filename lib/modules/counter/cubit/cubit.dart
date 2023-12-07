import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/modules/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterIntialState());

  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 1;
  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }

  void mius() {
    counter--;
    emit(CounterMinusState(counter));
  }
}
