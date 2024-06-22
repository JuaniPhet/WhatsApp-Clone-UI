import 'package:flutter/material.dart';
import 'package:flutter_first/call_screen.dart';
import 'package:flutter_first/home_screen.dart';
import 'package:flutter_first/statuses_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
      home: const StatusesScreen(),
      // home: const CallScreen(),
    );
  }
}
