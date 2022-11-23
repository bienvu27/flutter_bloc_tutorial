import 'package:flutter/material.dart';

import 'cubit/home_page.dart';
void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}


