import 'package:flutter/material.dart';

import 'Screen/Screen1.dart';
import 'Screen/Screen2.dart';
import 'Screen/Screen3.dart';


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
      initialRoute: '/screen1',
      routes: {
        '/screen1':(context)=> Screen1(),
        '/screen2':(context)=> Screen2(),
        '/screen3':(context)=> Screen3(),
      },
    );
  }
}
