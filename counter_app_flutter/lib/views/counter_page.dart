import 'package:counter_app_flutter/blocs/counter_bloc.dart';
import 'package:counter_app_flutter/events/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  // ignore: invalid_language_version_override
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.bloc<CounterBloc>();
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: BlocBuilder<CounterBloc, int>( // Xay dung giao dien Bloc tu hanh dong cua CounterBloc
          builder: (context, counter) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Two actions/events here:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      counterBloc.add(CounterEvent.increment);
                    },
                    child: Text('Increment(+)',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Result: ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('${counter}',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      counterBloc.add(CounterEvent.decrement);
                    },
                    child: Text('Decrement(-)',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            );
          },
        )
      ),
    );
  }
}