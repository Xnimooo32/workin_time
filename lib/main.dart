import 'package:flutter/material.dart';
import 'package:work_in_time/Screens/home/home.dart';
import 'package:work_in_time/Screens/new_employer/new_employer.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home':(context) => const Home(),
        'new_employer':(context) => const NewEmployer(),
      },
    ),
  );
}
