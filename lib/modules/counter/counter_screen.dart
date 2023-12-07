import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/modules/counter/cubit/cubit.dart';
import 'package:udemy/modules/counter/cubit/states.dart';

import '../../sharerd/shared_component/constants.dart';

class CounterScreen extends StatelessWidget {
  @override
  int counter = 0;
  void main() {
    Bloc.observer = MyBlocObserver();
    // Use cubits...
  }

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if (state is CounterPlusState) {
            print('kjhg$state.counter');
          }
          if (state is CounterMinusState) {
            print('kjhgf$state.counter');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("COUNTER"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.pink,
                    onPressed: () {
                      CounterCubit.get(context).mius();
                    },
                    child: Icon(
                      Icons.minimize,
                    ),
                  ),
                  Text(
                    '${counter}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  MaterialButton(
                    color: Colors.pink,
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
