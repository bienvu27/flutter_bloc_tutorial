import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/count_app/bloc/counter_bloc.dart';
import 'package:flutter_bloc_tutorial/count_app/bloc/counter_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App'),),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
            builder: (context, state) {
              return Text('$state', style: Theme.of(context).textTheme.headline4,);
            },
           ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterBloc.add(CounterEvent.increment);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
