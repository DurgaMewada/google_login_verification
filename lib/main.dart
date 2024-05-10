import 'package:flutter/material.dart';

import 'Screen/Screen1.dart';
import 'Screen/Screen2.dart';


void main()
{
  runApp(MyApp(),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/start',
      routes: {
        '/start':(context)=> Screen1(),
        '/login':(context)=> Screen2(),
      },
    );
  }
}
