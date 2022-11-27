import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/count_app/bloc/counter_bloc.dart';

import 'count_app/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const HomePage()),
  ));
}


